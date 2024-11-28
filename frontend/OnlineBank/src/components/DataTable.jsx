import React, { useState, useEffect } from 'react';
import { useTable, useSortBy, usePagination, useGlobalFilter } from 'react-table';
import axios from 'axios';
import { FaEye } from 'react-icons/fa';
import { MdDelete, MdEdit } from 'react-icons/md';
import EditModal from './EditModal';

const DataTable = ({ apiUrl, role }) => {
    const [data, setData] = useState([]);
    const [loading, setLoading] = useState(true);
    const [isOpen, setIsOpen] = useState(false);
    const [entity, setEntity] = useState({});

    const fetchData = async () => {
        try {
            const response = await axios.get(apiUrl); // Fetch data from provided API
            setData(response?.data?.data || []); // Ensure data is an array
            setLoading(false);
        } catch (error) {
            console.error('Error fetching data:', error);
            setLoading(false);
        }
    };

    const openModal=(status,row)=>{
        setIsOpen(status);
        setEntity(row);
    }
    useEffect(() => {
        fetchData();
    }, [apiUrl,isOpen]);

    const columns = React.useMemo(() => {
        if (role === 'ROLE_CUSTOMER') {
            return [
                { Header: 'Account Number', accessor: 'accountNumber' },
                { Header: 'First Name', accessor: 'firstName' },
                { Header: 'Last Name', accessor: 'lastName' },
                { Header: 'Username', accessor: 'username' },
                { Header: 'Email', accessor: 'email' },
                { Header: 'Account Type', accessor: 'accountType' },
            ];
        } else if (role === 'ROLE_EMPLOYEE') {
            return [
                { Header: 'ID', accessor: 'id' },
                { Header: 'Username', accessor: 'username' },
                { Header: 'Email', accessor: 'email' },
                { Header: 'Department', accessor: 'department' },
                { Header: 'Hire Date', accessor: 'hireDate' },
                { Header: 'Employee ID', accessor: 'employeeId' },
            ];
        } else if (role === 'ROLE_MANAGER') {
            return [
                { Header: 'ID', accessor: 'id' },
                { Header: 'Username', accessor: 'username' },
                { Header: 'Email', accessor: 'email' },
                { Header: 'Team Name', accessor: 'teamName' },
                { Header: 'Office Location', accessor: 'officeLocation' },
                { Header: 'Department', accessor: 'department' },
                { Header: 'Hire Date', accessor: 'hireDate' },
            ];
        } else {
            return [
                { Header: 'ID', accessor: 'id' },
                { Header: 'Username', accessor: 'username' },
                { Header: 'Email', accessor: 'email' },
                { Header: 'Role', accessor: 'role' },
            ];
        }
    }, [role]);

    const {
        getTableProps,
        getTableBodyProps,
        headerGroups,
        rows,
        prepareRow,
        state,
        page,
        gotoPage,
        previousPage,
        nextPage,
        setPageSize,
        setGlobalFilter,
        state: { pageIndex, pageSize, globalFilter },
    } = useTable(
        { columns, data: data || [] }, // Ensure data is always an array
        useGlobalFilter,
        useSortBy,
        usePagination
    );

    if (loading) return <p>Loading...</p>;

    // If data is empty, render nothing
    if (data.length === 0) {
        return (<h1 style={{ color: "black", textAlign: "center" }}>No {role.split("_")[1]} Data Received from Backend!</h1>); // Render nothing if data is empty
    }

    return (
        <>
        <EditModal openModal={openModal} isOpen={isOpen} entity={entity}/>
            <div className="p-4 bg-white min-w-full" style={{ color: "black" }}>
                <h1 className="text-2xl font-bold mb-4" style={{ color: "black" }}>{role.split("_")[1]}s Details</h1>
                <div className="mb-4">
                    <input
                        value={globalFilter || ''}
                        onChange={(e) => setGlobalFilter(e.target.value)}
                        placeholder="Search..."
                        className="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-600 text-zinc-50"
                    />
                </div>
                <table {...getTableProps()} className="min-w-full border" style={{ color: "black" }}>
                    <thead>
                        {headerGroups.map((headerGroup, i) => (
                            <tr {...headerGroup.getHeaderGroupProps()} key={i}>
                                {headerGroup.headers.map((column, j) => (
                                    <th
                                        {...column.getHeaderProps(column.getSortByToggleProps())}
                                        className="px-4 py-2 border-b font-semibold text-left"
                                        key={j}>
                                        {column.render('Header')}
                                        {column.isSorted ? (column.isSortedDesc ? ' 🔽' : ' 🔼') : ' '}
                                    </th>
                                ))}
                                <th>Actions</th>
                            </tr>
                        ))}
                    </thead>
                    <tbody {...getTableBodyProps()}>
                        {page.map((row, i) => {
                            console.log(JSON.stringify(row));
                            prepareRow(row);
                            return (
                                <tr {...row.getRowProps()} className="hover:bg-gray-100" key={i}>
                                    {row.cells.map((cell, j) => (
                                        <td {...cell.getCellProps()} className="px-4 py-2 border-t" key={j}>
                                            {cell.render('Cell')}
                                        </td>
                                    ))}
                                    <td className='px-1 py-2 border-t text-left' align='left'>
                                        <button className="btn btn-success font-bold text-xl" ><FaEye /></button>
                                        <button className="btn btn-primary font-bold text-xl m-1" onClick={()=>openModal(true,row)} ><MdEdit /></button>
                                        <button className="btn btn-warning font-bold text-xl" ><MdDelete /></button>
                                    </td>
                                </tr>
                            );
                        })}
                    </tbody>
                </table>

                {/* Pagination Controls */}
                <div className="mt-4 flex items-center justify-between">
                    <button onClick={() => previousPage()} disabled={!state.canPreviousPage} className="px-4 py-2 bg-gray-300 rounded">
                        Previous
                    </button>
                    <span>
                        Page{' '}
                        <strong>
                            {pageIndex + 1} of {Math.ceil(rows.length / pageSize)}
                        </strong>
                    </span>
                    <button onClick={() => nextPage()} disabled={!state.canNextPage} className="px-4 py-2 bg-gray-300 rounded">
                        Next
                    </button>

                    <select
                        value={pageSize}
                        onChange={(e) => setPageSize(Number(e.target.value))}
                        className="px-2 py-1 border bg-white rounded"
                    >
                        {[5, 10, 20].map((size) => (
                            <option key={size} value={size}>
                                Show {size}
                            </option>
                        ))}
                    </select>
                </div>
            </div>
        </>
    );
};

export default DataTable;

import { useEffect, useState } from "react"
import CustomerSidebar from "../Customers/CustomerSidebar";
import { Outlet } from "react-router-dom";
import AdminSidebar from "./AdminSidebar";

const DashboardLayout = () => {

    const [customer, setCustomer] = useState({});

    useEffect(() => {
        localStorage.setItem("customer", JSON.stringify({ "role": "ROLE_ADMIN" }))
        setCustomer(JSON.parse(localStorage.getItem("customer")));
    }, []);
    return (
        <div className="flex flex-col md:flex-row min-h-screen box-border">
            {
                customer.role === "ROLE_ADMIN" ? <AdminSidebar userRole="admin" /> : customer.role === "ROLE_EMPLOYEE" ? <CustomerSidebar userRole="employee"/> : customer.role === "ROLE_CUSTOMER" ? <CustomerSidebar userRole="customer"/> : ""
            }
            <div className="flex-1 bg-gray-100">
                <Outlet />
            </div>
        </div>
    )
}

export default DashboardLayout
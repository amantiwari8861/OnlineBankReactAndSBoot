/* eslint-disable react/prop-types */
import { useState } from 'react';
import { Link } from 'react-router-dom';
import { FaHome, FaTasks, FaUser, FaChartBar, FaCog, FaHeadset, FaBars, FaTimes } from 'react-icons/fa';
import logo from '../../assets/logo.png'

const AdminSidebar = ({ userRole }) => {
  const [isOpen, setIsOpen] = useState(false);

  const toggleSidebar = () => {
    setIsOpen(!isOpen);
  };

  return (
    <div>
      {/* Mobile hamburger menu button */}
      <div className="md:hidden bg-gray-900 p-4 text-white flex justify-between items-center">
        <h1 className="flex text-2xl font-bold text-center items-center"><img src={logo} alt="" className='h-[60px]' /> eBank</h1>
        <button onClick={toggleSidebar}>
          {isOpen ? <FaTimes className="text-2xl" /> : <FaBars className="text-2xl" />}
        </button>
      </div>

      {/* Sidebar */}
      <div
        className={`bg-gray-800 text-white w-64 min-h-screen md:static md:block fixed top-0 ${isOpen ? 'left-0' : '-left-64'
          } transition-all duration-300 ease-in-out z-50`}
      >
        <div className="flex items-center justify-center h-16 bg-gray-900 shadow-md">
          <h1 className="flex text-2xl font-bold text-center items-center"><img src={logo} alt="" className='h-[60px]' /> eBank</h1>
        </div>
        <nav className="flex-1 mt-6">
          <ul>
            {userRole === 'admin' && (
              <>
                <li>
                  <Link
                    to="/dashboard/admin"
                    className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                  >
                    <FaHome className="mr-3 text-lg" />
                    Dashboard
                  </Link>
                </li>
                {/* <li>
                  <Link
                    to="/dashboard/admin/analytics"
                    className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                  >
                    <FaChartBar className="mr-3 text-lg" />
                    Analytics 
                  </Link>
                </li> */}
                <li>
                  <Link
                    to="/dashboard/admin/customer-management"
                    className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                  >
                    <FaUser className="mr-3 text-lg" />
                    Manage Customers
                  </Link>
                </li>
                <li>
                  <Link
                    to="/dashboard/admin/manager-management"
                    className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                  >
                    <FaUser className="mr-3 text-lg" />
                    Manage Managers
                  </Link>
                </li>
                <li>
                  <Link
                    to="/dashboard/admin/employee-management"
                    className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                  >
                    <FaUser className="mr-3 text-lg" />
                    Manage Employees
                  </Link>
                </li>
                {/* <li>
                  <Link
                    to="/dashboard/admin/loan-management"
                    className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                  >
                    <FaTasks className="mr-3 text-lg" />
                    Loan Management
                  </Link>
                </li> */}
                {/* <li>
                  <Link
                    to="/dashboard/admin/report"
                    className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                  >
                    <FaChartBar className="mr-3 text-lg" />
                    Reports
                  </Link>
                </li> */}
                {/* <li>
                  <Link
                    to="/dashboard/admin/platform-settings"
                    className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                  >
                    <FaCog className="mr-3 text-lg" />
                    Settings
                  </Link>
                </li> */}
                {/* <li>
                  <Link
                    to="/dashboard/admin/support-management"
                    className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                  >
                    <FaHeadset className="mr-3 text-lg" />
                    Support
                  </Link>
                </li> */}
              </>
            )}
          </ul>
        </nav>
      </div>

      {/* Overlay when sidebar is open in mobile */}
      {isOpen && <div className="fixed inset-0 bg-black opacity-50 z-40 md:hidden" onClick={toggleSidebar}></div>}
    </div>
  );
};

export default AdminSidebar;

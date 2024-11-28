
import { Link } from 'react-router-dom';
import { FaHome, FaTasks, FaUser, FaEnvelope, FaDollarSign, FaChartBar } from 'react-icons/fa';
import logo from '../assets/logo.png'
const Sidebar = ({ userRole }) => {
  return (
    <div className="bg-gray-800 text-white w-64 min-h-screen flex flex-col">
      <div className="flex items-center justify-center h-16 bg-gray-900 shadow-md">
        <h1 className="flex text-2xl font-bold text-center items-center"><img src={logo} alt="" /> eBank</h1>
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

              <li>
                <Link
                  to="/dashboard/admin/user-management"
                  className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                >
                  <FaUser className="mr-3 text-lg" />
                  Users
                </Link>
              </li>
              <li>
                <Link
                  to="/dashboard/admin/loan-management"
                  className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                >
                  <FaTasks className="mr-3 text-lg" />
                  Loan Management
                </Link>
              </li>
              <li>
                <Link
                  to="/dashboard/admin/report"
                  className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                >
                  <FaChartBar className="mr-3 text-lg" />
                  Reports
                </Link>
              </li>
              <li>
                <Link
                  to="/dashboard/admin/platform-settings"
                  className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                >
                  <FaChartBar className="mr-3 text-lg" />
                  Settings
                </Link>
              </li>
              <li>
                <Link
                  to="/dashboard/admin/support-management"
                  className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                >
                  <FaChartBar className="mr-3 text-lg" />
                  Support
                </Link>
              </li>
            </>
          )}
          {userRole === 'customer' && (
            <>
              <li>
                <Link
                  to="/dashboard/customer"
                  className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                >
                  <FaEnvelope className="mr-3 text-lg" />
                  Dashboard
                </Link>
              </li>

              <li>
                <Link
                  to="/dashboard/customer/loan-request-form"
                  className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                >
                  <FaEnvelope className="mr-3 text-lg" />
                  Loan Request
                </Link>
              </li>

              <li>
                <Link
                  to="/dashboard/customer/profile"
                  className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                >
                  <FaEnvelope className="mr-3 text-lg" />
                  Profile
                </Link>
              </li>

              <li>
                <Link
                  to="/dashboard/customer/notifications"
                  className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                >
                  <FaEnvelope className="mr-3 text-lg" />
                  Notifications
                </Link>
              </li>

              <li>
                <Link
                  to="/dashboard/customer/rgister-user"
                  className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                >
                  <FaEnvelope className="mr-3 text-lg" />
                  Register
                </Link>
              </li>

              <li>
                <Link
                  to="/dashboard/customer/repayment"
                  className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                >
                  <FaEnvelope className="mr-3 text-lg" />
                  Repayments
                </Link>
              </li>

              <li>
                <Link
                  to="/dashboard/customer/user-management"
                  className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                >
                  <FaEnvelope className="mr-3 text-lg" />
                  User Management
                </Link>
              </li>

              <li>
                <Link
                  to="/dashboard/customer/loan-list"
                  className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                >
                  <FaDollarSign className="mr-3 text-lg" />
                  My Loans
                </Link>
              </li>
            </>
          )}
          {userRole === 'employee' && (
            <>
              <li>
                <Link
                  to="/dashboard/employee"
                  className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                >
                  <FaDollarSign className="mr-3 text-lg" />
                  Dashboard
                </Link>
              </li>
              <li>
                <Link
                  to="/dashboard/employee/investing-loan"
                  className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                >
                  <FaDollarSign className="mr-3 text-lg" />
                  My Investments
                </Link>
              </li>
              <li>
                <Link
                  to="/dashboard/employee/notifications"
                  className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                >
                  <FaDollarSign className="mr-3 text-lg" />
                  Notifications
                </Link>
              </li>
              <li>
                <Link
                  to="/dashboard/employee/profile"
                  className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                >
                  <FaDollarSign className="mr-3 text-lg" />
                  Profile
                </Link>
              </li>
              <li>
                <Link
                  to="/dashboard/employee/loan-list"
                  className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                >
                  <FaDollarSign className="mr-3 text-lg" />
                  Loan List
                </Link>
              </li>
              <li>
                <Link
                  to="/investments"
                  className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                >
                  <FaDollarSign className="mr-3 text-lg" />
                  My Investments
                </Link>
              </li>
              <li>

                <Link
                  to="/dashboard/employee/repayment"
                  className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                >
                  <FaDollarSign className="mr-3 text-lg" />
                  Repayments
                </Link>
              </li>

              <li>
                <Link
                  to="/dashboard/employee/support"
                  className="flex items-center p-4 hover:bg-gray-700 transition-colors duration-200"
                >
                  <FaEnvelope className="mr-3 text-lg" />
                  Support Requests
                </Link>
              </li>
            </>
          )}
        </ul>
      </nav>
    </div>
  );
};

export default Sidebar;

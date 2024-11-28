import { Route, Routes } from "react-router-dom"
// import Charts from "./components/Charts"
// import Layout from "./components/Layout"
// import { NotificationHandler } from "./components/NotificationHandler"
// import About from "./pages/About"
// import Contact from "./pages/Contact"
// import Home from "./pages/Home"
// import Service from "./pages/Services"

import Home from './pages/LandingPage/Home';
import Register from './auth/Register';
import SignIn from './auth/SignIn';


// admin
import AdminDashboard from './pages/admin/AdminDashboard';
// import AdminNavbar from './pages/admin/AdminNavbar';
import LoanManagement from './pages/admin/LoanManagement';
import PlatformSettings from './pages/admin/PlatformSettings';
import Report from './pages/admin/Report';
import SupportManagement from './pages/admin/SupportManagement';
import UserManagement from './pages/admin/userManagement';
import AdminNotifications from './pages/admin/AdminNotifications'

//customer
import CustomerDashboard from './pages/Customers/Dashboard';
import UserProfile from './pages/Customers/CustomerUserProfile';
import LoanList from './pages/Customers/LoanList';
import LoanRequestForm from './pages/Customers/LoanRequestForm';
import Notifications from './pages/Customers/Notifications';
import RegisterUser from './pages/Customers/RegisterUser';
import RepaymentManagement from './pages/Customers/RepaymentManagement';
import SupportRequests from './pages/Customers/SupportRequests';
import CustomerUserManagement from './pages/Customers/UserManagement';
import PaystackPayment from './pages/Customers/PaystackPayment';

//employee
import LenderDashboard from './pages/Lenders/Dashboard';
import InvestIngLoan from './pages/Lenders/InvestIngLoan';
import LenderNotifications from './pages/Lenders/LenderNotifications';
import LenderProfile from './pages/Lenders/LenderProfile';
import LenderLoanList from './pages/Lenders/LoanList';
import LenderRepaymentManagement from './pages/Lenders/RepaymentManagement';
import LenderSupport from './pages/Lenders/Support';
import NotFound from "./components/NotFound";
import DashboardLayout from "./pages/admin/DashboardLayout";
import TotalNoCards from "./pages/admin/TotalNoCards";
import DataTable from "./components/DataTable";



const App = () => {
  return (
    <>
      <div className="flex">

        <div className="flex-1 p-0">
          <Routes>

            <Route path="/" element={<Home />} />
            <Route path="/register" element={<Register />} />
            <Route path="/signin" element={<SignIn />} />
            <Route path="/pay-stack-payment" element={<PaystackPayment />} />
            <Route path="/*" element={<NotFound />} />

            <Route path="/dashboard" element={<DashboardLayout />} >
              {/* Customer */}
              <Route path="customer" element={<CustomerDashboard />} >
                <Route path="profile" element={<UserProfile />} />
                <Route path="loan-list" element={<LoanList />} />
                <Route path="loan-request-form" element={<LoanRequestForm />} />
                <Route path="notifications" element={<Notifications />} />
                <Route path="register-user" element={<RegisterUser />} />
                <Route path="repayment" element={<RepaymentManagement />} />
                <Route path="support-request" element={<SupportRequests />} />
                <Route path="user-management" element={<CustomerUserManagement />} />
              </Route>
              <Route path="employee" element={<LenderDashboard />} >
                {/* employee */}
                <Route path="investing-loan" element={<InvestIngLoan />} />
                <Route path="notifications" element={<LenderNotifications />} />
                <Route path="profile" element={<LenderProfile />} />
                <Route path="loan-list" element={<LenderLoanList />} />
                <Route path="repayment" element={<LenderRepaymentManagement />} />
                <Route path="support" element={<LenderSupport />} />
              </Route>
              <Route path="admin" element={<AdminDashboard />} >
                {/* admin */}
                <Route path="analytics" element={<TotalNoCards />} />
                <Route path="customer-management" element={<DataTable apiUrl="http://localhost:9090/api/v1/customers" role="ROLE_CUSTOMER"/>} />
                <Route path="manager-management" element={<DataTable apiUrl="http://localhost:9090/api/v1/managers" role="ROLE_MANAGER"/>} />
                <Route path="employee-management" element={<DataTable apiUrl="http://localhost:9090/api/v1/employees" role="ROLE_EMPLOYEE"/>} />
                <Route path="report" element={<Report />} />
                <Route path="user-management" element={<UserManagement />} />
              </Route>
            </Route>
          </Routes>
        </div>
      </div>
    </>
  )
}

export default App

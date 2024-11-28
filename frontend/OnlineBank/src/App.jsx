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
import BorrowerDashboard from './pages/Borrowers/Dashboard';
import UserProfile from './pages/Borrowers/BorrowerUserProfile';
import LoanList from './pages/Borrowers/LoanList';
import LoanRequestForm from './pages/Borrowers/LoanRequestForm';
import Notifications from './pages/Borrowers/Notifications';
import RegisterUser from './pages/Borrowers/RegisterUser';
import RepaymentManagement from './pages/Borrowers/RepaymentManagement';
import SupportRequests from './pages/Borrowers/SupportRequests';
import BorrowerUserManagement from './pages/Borrowers/UserManagement';
import PaystackPayment from './pages/Borrowers/PaystackPayment';

//employee
import LenderDashboard from './pages/Lenders/Dashboard';
import InvestIngLoan from './pages/Lenders/InvestIngLoan';
import LenderNotifications from './pages/Lenders/LenderNotifications';
import LenderProfile from './pages/Lenders/LenderProfile';
import LenderLoanList from './pages/Lenders/LoanList';
import LenderRepaymentManagement from './pages/Lenders/RepaymentManagement';
import LenderSupport from './pages/Lenders/Support';



const App = () => {
  return (
    <>
      <div className="flex">

        <div className="flex-1 p-0">
          <Routes>

            <Route path="/" element={<Home />} />
            <Route path="/register" element={<Register />} />
            <Route path="/signin" element={<SignIn />} />

            {/* I have not implimented protected routes on the codes/dashboard but you can try to do that */}

            {/* Borrower */}
            <Route path="/customer/dashboard" element={<BorrowerDashboard/>} />
            <Route path="/customer/profile" element={<UserProfile />} />
            <Route path="/customer/loan-list" element={<LoanList />} />
            <Route path="/customer/loan-request-form" element={<LoanRequestForm />} />
            <Route path="/customer/notifications" element={<Notifications/>} />
            <Route path="/customer/register-user" element={<RegisterUser />} />
            <Route path="/customer/repayment" element={<RepaymentManagement />} />
            <Route path="/customer/support-request" element={<SupportRequests  />} />
            <Route path="/customer/user-management" element={<BorrowerUserManagement />} />
            <Route path="/pay-stack-payment" element={<PaystackPayment />} />

            {/* employee */}
            <Route path="/employee/dashboard" element={<LenderDashboard />} />
            <Route path="/employee/investing-loan" element={<InvestIngLoan />} />
            <Route path="/employee/notifications" element={<LenderNotifications />} />
            <Route path="/employee/profile" element={<LenderProfile />} />
            <Route path="/employee/loan-list" element={<LenderLoanList />} />
            <Route path="/employee/repayment" element={<LenderRepaymentManagement />} />
            <Route path="/employee/support" element={<LenderSupport  />} />



            {/* admin */}
            <Route path="/admin/dashboard" element={<AdminDashboard />} />
            <Route path="/admin/loan-management" element={<LoanManagement />} />
            <Route path="/admin/platform-settings" element={<PlatformSettings />} />
            <Route path="/admin/report" element={<Report />} />
            <Route path="/admin/support-management" element={<SupportManagement />} />
            <Route path="/admin/user-management" element={<UserManagement />} />
            <Route path="/admin/notifications" element={<AdminNotifications />} />

          </Routes>
        </div>
      </div>
     </>
  )
}

export default App

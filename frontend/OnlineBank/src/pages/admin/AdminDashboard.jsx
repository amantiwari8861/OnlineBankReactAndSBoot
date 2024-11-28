import { Outlet, useLocation } from 'react-router-dom';
import AdminNavbar from './AdminNavbar';
import TotalNoCards from './TotalNoCards';

function AdminDashboard() {
  const location = useLocation();

  return (
    <div className="flex flex-col md:flex-row min-h-screen box-border">
      <div className="flex-1 bg-gray-100 p-4">
        <AdminNavbar />
        <h1 className="text-3xl font-bold text-gray-800 mb-6 text-center mt-2">Admin Dashboard</h1>
        {location.pathname.endsWith("/admin")? <TotalNoCards/> :<Outlet />}
      </div>
    </div>
  );
}

export default AdminDashboard;

import axios from "axios";
import { useEffect, useState } from "react";

const TotalNoCards = () => {
    const [dashboardData, setDashboardData] = useState({
        totalManagers: 0,
        totalEmployees: 0,
        totalCustomers: 0,
      });
    
      useEffect(() => {
        const fetchDashboardData = async () => {
          try {
            // Fetch all employees
            const employeesResponse = await axios.get(import.meta.env.VITE_API_URL + '/employees');
            const totalEmployees = employeesResponse.data.length;
    
            // Fetch all managers
            const managersResponse = await axios.get(import.meta.env.VITE_API_URL + '/managers');
            const totalManagers = managersResponse.data.length;
    
            // Fetch all customers
            const customersResponse = await axios.get(import.meta.env.VITE_API_URL + '/customers');
            const totalCustomers = customersResponse.data.data.length;
    
            // Set the dashboard data
            setDashboardData({
              totalManagers,
              totalEmployees,
              totalCustomers,
            });
          } catch (error) {
            console.error('Error fetching dashboard data:', error);
          }
        };
    
        fetchDashboardData();
      }, []);
  return (
    <div className="max-w-7xl mx-auto mb-4">
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
            {/* Total Managers */}
            <div className="bg-white shadow-md rounded-lg p-6">
              <h2 className="text-xl font-semibold text-gray-700">Total Managers</h2>
              <p className="text-2xl font-bold text-gray-900">{dashboardData.totalManagers}</p>
            </div>

            {/* Total Employees */}
            <div className="bg-white shadow-md rounded-lg p-6">
              <h2 className="text-xl font-semibold text-gray-700">Total Employees</h2>
              <p className="text-2xl font-bold text-gray-900">{dashboardData.totalEmployees}</p>
            </div>

            {/* Total Customers */}
            <div className="bg-white shadow-md rounded-lg p-6">
              <h2 className="text-xl font-semibold text-gray-700">Total Customers</h2>
              <p className="text-2xl font-bold text-gray-900">{dashboardData.totalCustomers}</p>
            </div>
          </div>
        </div>
  )
}
export default TotalNoCards
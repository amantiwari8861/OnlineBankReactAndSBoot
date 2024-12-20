import { useState, useEffect } from 'react';
import axios from 'axios';
import Sidebar from '../Customers/CustomerSidebar';


const CustomerUserManagement = () => {
  const [users, setUsers] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchUsers = async () => {
      try {
        const response = await axios.get(import.meta.env.VITE_API_URL + '/users');
        setUsers(response.data);
        setLoading(false);
      } catch (err) {
        setError(err.message);
        setLoading(false);
      }
    };

    fetchUsers();
  }, []);

  const handleDeactivate = async (userId) => {

    try {
      await axios.post(import.meta.env.VITE_API_URL + `/users/${userId}/deactivate`);
      setUsers(users.map(user =>
        user.id === userId ? { ...user, status: 'inactive' } : user
      ));
    } catch (err) {
      setError(err.message);
    }
  };

  const handleDelete = async (userId) => {
    try {
      await axios.delete(import.meta.env.VITE_API_URL + `/users/${userId}`);
      setUsers(users.filter(user => user.id !== userId));
    } catch (err) {
      setError(err.message);
    }
  };

  if (loading) return <p>Loading...</p>;
  if (error) return <p>Error: {error}</p>;

  return (
    <div className="flex">
      <Sidebar userRole="customer" />
      <div className="p-4">
        <h1 className="text-xl font-bold mb-4">User Management</h1>
        <table className="min-w-full bg-white border border-gray-200 rounded-lg shadow-md">
          <thead>
            <tr className="w-full bg-gray-100 border-b border-gray-200">
              <th className="p-4 text-left">Name</th>
              <th className="p-4 text-left">Email</th>
              <th className="p-4 text-left">Status</th>
              <th className="p-4 text-left">Actions</th>
            </tr>
          </thead>
          <tbody>
            {users.map(user => (
              <tr key={user.id} className="border-b border-gray-200">
                <td className="p-4">{user.name}</td>
                <td className="p-4">{user.email}</td>
                <td className="p-4">{user.status}</td>
                <td className="p-4">
                  <button
                    onClick={() => handleDeactivate(user.id)}
                    className="text-blue-500 hover:text-blue-700"
                  >
                    Deactivate
                  </button>
                  <button
                    onClick={() => handleDelete(user.id)}
                    className="ml-4 text-red-500 hover:text-red-700"
                  >
                    Delete
                  </button>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>

    </div>
  );
};

export default CustomerUserManagement;

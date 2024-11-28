//http for customer notification for post :  http://localhost:5000/api/customer-notification
// for put :  http://localhost:5000/api/customer-notification/${:notificationId}

import { useEffect, useState } from 'react';
import axios from 'axios';
import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import Sidebar from '../Customers/CustomerSidebar';


const Notifications = ({ userId }) => {
  const [notifications, setNotifications] = useState([]);

  useEffect(() => {
    const fetchNotifications = async () => {
      try {
        const token = localStorage.getItem('token');
        const response = await axios.get(import.meta.env.VITE_API_URL + `/customer-notification/${userId}`);
        setNotifications(response.data);
      } catch (error) {
        toast.error('Failed to fetch notifications');
      }
    };

    fetchNotifications();
  }, [userId]);

  const handleMarkAsRead = async (notificationId) => {
    try {
      const token = localStorage.getItem('token');
      await axios.put(import.meta.env.VITE_API_URL + `/customer-notification/${notificationId}`,
        { status: 'read' },
        { headers: { Authorization: `Bearer ${token}` } });
      setNotifications(notifications.map(n =>
        n.id === notificationId ? { ...n, status: 'read' } : n
      ));
      toast.success('Notification marked as read');
    } catch (error) {
      toast.error('Failed to update notification status');
    }
  };


  return (
    <div className="flex">
      <Sidebar userRole="customer" />
      <div className="p-4 bg-gray-100 rounded-lg shadow-md">
        <h2 className="text-xl font-semibold mb-4">Your Notifications</h2>
        <ul>
          {notifications.map(notification => (
            <li key={notification.id} className="flex justify-between items-center p-2 mb-2 bg-white rounded-lg shadow-sm">
              <span className={`flex-1 ${notification.status === 'read' ? 'text-gray-500' : 'text-black'}`}>
                {notification.message}
              </span>
              {notification.status !== 'read' && (
                <button
                  onClick={() => handleMarkAsRead(notification.id)}
                  className="ml-4 bg-blue-500 text-white px-3 py-1 rounded"
                >
                  Mark as Read
                </button>
              )}
            </li>
          ))}
        </ul>
        <ToastContainer />
      </div>
    </div>
  );
};

export default Notifications;

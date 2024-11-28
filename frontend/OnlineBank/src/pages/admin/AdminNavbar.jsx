import  { useState } from 'react';
import { BsSun, BsMoon } from 'react-icons/bs';

const AdminNavbar = () => {
  const [darkMode, setDarkMode] = useState(false);

  const toggleDarkMode = () => {
    setDarkMode(!darkMode);
    if (darkMode) {
      document.documentElement.classList.remove('dark');
    } else {
      document.documentElement.classList.add('dark');
    }
  };

  return (
    <div className="flex items-center justify-between p-4 bg-white shadow-md dark:bg-gray-800 rounded">
      <div className="flex items-center space-x-4">
        <h1 className="text-xl font-semibold text-gray-700 dark:text-gray-200">Dashboard</h1>
        <span className="text-gray-500">›</span>
        <h2 className="text-lg font-medium text-gray-600 dark:text-gray-300">Home</h2>
      </div>
      <div className="flex items-center space-x-4">
        <button onClick={toggleDarkMode} className="text-gray-500 dark:text-gray-400">
          {darkMode ? <BsSun /> : <BsMoon />}
        </button>
      </div>
    </div>
  ); 
};

export default AdminNavbar;

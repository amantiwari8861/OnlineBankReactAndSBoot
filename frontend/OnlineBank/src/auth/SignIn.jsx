import { useState } from 'react';
import { useNavigate, Link } from 'react-router-dom';
import axios from 'axios';
import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import auth from '../assets/auth.png';

const SignIn = () => {
  const [email, setEmail] = useState('');
  const [role, setRole] = useState('customer');
  const [password, setPassword] = useState('');
  const navigate = useNavigate();

  const handleSignIn = async (e) => {
    e.preventDefault();
    try {
      //when deploying I changed the backedn path based on the backend path from where our backedn runs online
      const response = await axios.post(import.meta.env.VITE_API_URL + '/auth/login', { email, password, role });
      console.log("Response:",response);
      localStorage.setItem("customer",JSON.stringify(response.data.data));
      
      if (response.data.data.accountNumber && response.data.data.role) {
        const accountNumber = response.data.data.accountNumber;
        const userRole = response.data.data.role;
        localStorage.setItem('accountNumber', accountNumber);
        localStorage.setItem('role', userRole);

        toast.success('Login successful!');
        if (userRole === 'admin') navigate('/dashboard/admin');
        else if (userRole === 'employee') navigate('/dashboard/employee');
        else if (userRole === 'manager') navigate('/dashboard/manager');
        else navigate('/dashboard/customer');
      }
    } catch (error) {
      const errorMessage = error.response?.data?.message || 'Login failed. Please try again.';
      toast.error(errorMessage);
      console.error('SignIn failed', error);
    }
  };

  return (
    <div className="flex flex-col md:flex-row h-screen">
      <div className="md:w-1/2 w-full bg-gray-100">
        <img src={auth} alt="SignIn" className="object-cover w-full h-full" />
      </div>
      <div className="md:w-1/2 w-full flex flex-col justify-center px-8 md:px-16 bg-white">
        <h2 className="text-3xl font-bold mb-6 text-center md:text-left">Welcome Back!</h2>
        <form onSubmit={handleSignIn}>
          <div className="mb-4">
            <label className="block text-gray-700 text-sm font-bold mb-2">Email</label>
            <input
              type="email"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              className="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-600"
              placeholder="example@mail.com"
            />
          </div>
          <div className="mb-4">
            <label className="block text-gray-700 text-sm font-bold mb-2">Password</label>
            <input
              type="password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              className="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-600"
              placeholder="********"
            />
          </div>
          <div className="mb-4">
            <label className="block text-gray-700 text-sm font-bold mb-2">Role</label>
            <select
              value={role}
              onChange={(e) => setRole(e.target.value)}
              className="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-600"
            >
              <option value="customer">customer</option>
              <option value="admin">admin</option>
              <option value="manager">manager</option>
              <option value="employee">employee</option>
            </select>
          </div>

          <button className="w-full bg-indigo-600 text-white py-2 rounded-lg hover:bg-indigo-700 transition duration-200">
            Sign In
          </button>
        </form>
        <div className="mt-4 text-center">
          <Link to="/register" className="text-indigo-600 hover:underline">Don&apos;t have an account? Register</Link>
        </div>
        <ToastContainer />
      </div>
    </div>
  );
};

export default SignIn;

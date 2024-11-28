import { useState } from 'react';
import { useNavigate, Link } from 'react-router-dom';
import axios from 'axios';
import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import auth from '../assets/auth.png';

const Register = () => {
  const [name, setName] = useState('');
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [username, setUsername] = useState('');
  const navigate = useNavigate();

  const handleRegister = async (e) => {
    e.preventDefault();
    try {
      const response = await axios.post(import.meta.env.VITE_API_URL + '/customers', {
        name,
        email,
        password,
        username,
      }, {
        headers: {
          'Content-Type': 'application/json',
        }
      });

      const resObj = await response.data;
      console.log(resObj);
      if (resObj.data.id > 0) {
        toast.success('Registration successful!', {
          position: "top-right",
          autoClose: 5000,
          hideProgressBar: false,
          closeOnClick: true,
          pauseOnHover: true,
          draggable: true,
          progress: undefined,
          theme: "dark"
        });
        setTimeout(() => {
          navigate('/customer/dashboard');
        }, 2000);
      }
    } catch (error) {
      toast.error('unable to Register!', {
        position: "top-right",
        autoClose: 5000,
        hideProgressBar: false,
        closeOnClick: true,
        pauseOnHover: true,
        draggable: true,
        progress: undefined,
        theme: "dark"
      });
      console.error('Registration failed:', error);
    }
  };

  return (
    <div className="flex flex-col md:flex-row h-screen">
      <div className="md:w-1/2 w-full bg-gray-100">
        <img src={auth} alt="Register" className="object-cover w-full h-full" />
      </div>
      <div className="md:w-1/2 w-full flex flex-col justify-center px-8 md:px-16 bg-white">
        <h2 className="text-3xl font-bold mb-6 text-center md:text-left">Create an Account</h2>
        <form onSubmit={handleRegister}>
          <div className="mb-4">
            <label className="block text-gray-700 text-sm font-bold mb-2">Full Name</label>
            <input
              type="text"
              value={name}
              onChange={(e) => setName(e.target.value)}
              className="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-600"
              placeholder="John Doe"
            />
          </div>
          <div className="mb-4">
            <label className="block text-gray-700 text-sm font-bold mb-2">Username</label>
            <input
              type="text"
              value={username}
              onChange={(e) => setUsername(e.target.value)}
              className="w-full px-3 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-indigo-600"
              placeholder="amantiwari8861"
            />
          </div>
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
          <button className="w-full bg-indigo-600 text-white py-2 rounded-lg hover:bg-indigo-700 transition duration-200">
            Register
          </button>
        </form>
        <div className="mt-4 text-center">
          <Link to="/signin" className="text-indigo-600 hover:underline">Already have an account? Login</Link>
        </div>
        <ToastContainer />
      </div>
    </div>
  );
};

export default Register;

import { NavLink } from "react-router-dom"

const Navbar = () => {
    return (
        <header className="navbar rounded-lg bg-lime-400" >
            <div className="navbar-start">
                <NavLink className={({ isActive }) => `navbar-item ${isActive ? 'active' : ""}`} to={"/home"}>LOGO</NavLink>
            </div>
            <div className="navbar-center">
                <NavLink className={({ isActive }) => `navbar-item ${isActive ? 'active' : ""}`} to={"/home"}>Home</NavLink>
                <NavLink className={({ isActive }) => `navbar-item ${isActive ? 'active' : ""}`} to={"/services"}>Services</NavLink>
                <NavLink className={({ isActive }) => `navbar-item ${isActive ? 'active' : ""}`} to={"/about"}>About</NavLink>
                <NavLink className={({ isActive }) => `navbar-item ${isActive ? 'active' : ""}`} to={"/contact"}>Contact</NavLink>
            </div>
            <div className="navbar-end">
                <div className="avatar avatar-ring avatar-md">
                    <div className="dropdown-container">
                        <div className="dropdown">
                            <label className="btn btn-ghost flex cursor-pointer px-0" tabIndex="0">
                                <img src="https://i.pravatar.cc/150?u=a042581f4e29026024d" alt="avatar" />
                            </label>
                            <div className="dropdown-menu dropdown-menu-bottom-left">
                                <NavLink className={({ isActive }) => `${isActive ? 'active' : ""} dropdown-item text-sm`} to={"/profile"}>Profile</NavLink>
                                <NavLink tabIndex="-1" className={({ isActive }) => `${isActive ? 'active' : ""} dropdown-item text-sm`} to={"/settings"}>Account settings</NavLink>
                                <NavLink tabIndex="-1" className={({ isActive }) => `${isActive ? 'active' : ""} dropdown-item text-sm`} to={"/subscription"}>Subscriptions</NavLink>
                                <NavLink tabIndex="-1" className={({ isActive }) => `${isActive ? 'active' : ""} dropdown-item text-sm`} to={"/logout"}>logout</NavLink>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    )
}

export default Navbar

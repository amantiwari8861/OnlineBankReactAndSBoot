import { Outlet } from "react-router-dom"
import Navbar from "./Navbar"
import SideBar from "./SideBar"
import './layout.css'
const Layout = () => {
  return (
    <>
      <Navbar />
      <main>
        <aside>
          <SideBar />
        </aside>
        <section>
          <Outlet />
        </section>
      </main>
    </>
  )
}

export default Layout

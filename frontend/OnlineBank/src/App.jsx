import { Route, Routes } from "react-router-dom"
import Layout from "./components/Layout"
import About from "./pages/About"
import Contact from "./pages/Contact"
import Home from "./pages/Home"
import Service from "./pages/Services"
import Charts from "./components/Charts"
import { NotificationHandler } from "./components/NotificationHandler"

const App = () => {
  return (
    <>
      <Routes>
        <Route path="/" element={<Layout />}>
          <Route path="home" element={<Home />} />
          <Route path="about" element={<About />} />
          <Route path="contact" element={<Contact />} />
          <Route path="services" element={<Service />} />
          <Route path="charts" element={<Charts />} />
          <Route path="toast" element={<NotificationHandler />} />
        </Route>
      </Routes>
    </>
  )
}

export default App

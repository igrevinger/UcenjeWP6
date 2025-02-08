import 'bootstrap/dist/css/bootstrap.min.css'
import './App.css'
import { Container } from 'react-bootstrap'
import NavBarEdunova from './components/NavBarEdunova'
import { Route, Routes } from 'react-router-dom'
import { RouteNames } from './constants'
import Pocetna from './pages/Pocetna'
import SmjeroviPregled from './pages/smjerovi/SmjeroviPregled'



function App() {

  return (
    <>
      <Container>
        <NavBarEdunova />
        
        <Routes>
          <Route path={RouteNames.HOME} element={<Pocetna />} />
          <Route path={RouteNames.SMJER_PREGLED} element={<SmjeroviPregled />} />
        </Routes>

        <hr />
        &copy; Edunova 2025
      </Container>
     
    </>
  )
}

export default App

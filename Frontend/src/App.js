import Navbar from "./Navbar";
import Home from "./Home";
import TripList from "./Destinations/TripList";
import About from "./About";
import './index.css';

import {BrowserRouter as Router, Route, Switch} from "react-router-dom";


function App() {
  return (
      <Router>
          <Navbar />
          
            
              <Switch>
                <Route exact path='/'>
                  <Home />
                </Route>
                <Route exact path='/about'>
                  <About/>
                </Route>
                <Route exact path='/destinations'>
                  <TripList />
                </Route>
              </Switch>
            
       
      </Router>
  );
}

export default App;

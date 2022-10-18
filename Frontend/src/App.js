import Navbar from "./Navbar";
import Home from "./Home";
import Destinations from "./Destinations";
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
                  <Destinations />
                </Route>
              </Switch>
            
       
      </Router>
  );
}

export default App;

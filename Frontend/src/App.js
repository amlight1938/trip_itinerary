import Home from "./Home";
import CallApiSingleTrip from "./Destinations/Single Trip/CallApiSingleTrip";
import About from "./About";
import './index.css';
import {BrowserRouter as Router, Route, Switch} from "react-router-dom";
import { Component } from "react";
import UserCustomTripsPage from "./Users/UserCustomTripsPage";
import axios from "axios";
import MyNavbar from "./MyNavbar";
import DestinationsPage from "./Destinations/DestinationsPage";
import BottomBanner from "./BottomBanner";
import NotFound from "./NotFound";

class App extends Component {
  constructor(props){
    super(props);
    this.state = {
      isLoggedIn: false,
      user: {}
    };

    this.handleLogin = this.handleLogin.bind(this);
    this.handleLogout = this.handleLogout.bind(this);
  };

  handleLogin(data){
    this.setState({
      isLoggedIn: true,
      user: data.user
    });
  };

  handleLogout(){
    axios
      .delete('http://localhost:3001/api/v1/logout', {withCredentials: true})
      .then(response => {
        this.setState({
          isLoggedIn: false,
          user: {}
        })
        console.log('logout response', response)
      })
      .catch(error => {
        console.log('logout error: ', error)
      })
  }

  initialLoginStatusCheck(){
    axios
      .get('http://localhost:3001/api/v1/logged_in', {withCredentials: true})
      .then(response => {
        if( response.data.logged_in && !this.state.isLoggedIn ){
          this.setState({
            isLoggedIn: true,
            user: response.data.user
          })
        }else if( !response.data.logged_in && this.state.isLoggedIn ){
          this.setState({
            isLoggedIn: false,
            user: {}
          })
        }
      })
      .catch(error => {
        console.log('initial check response', error)
      })
  }

  componentDidMount(){
    this.initialLoginStatusCheck()
  }

  render(){
    return (   
      <Router>
        <Switch>
          <Route exact path='/'
            render={props => (
              <>
              <MyNavbar {...props} handleLogout={this.handleLogout} session={this.state}/>
              <Home {...props} session={this.state}/>
              <BottomBanner {...props} session={this.state}/>
              </>
            )}/>
            
          <Route exact path='/about'
            render={props => (
              <>
              <MyNavbar {...props} handleLogout={this.handleLogout} session={this.state}/>
              <About {...props} session={this.state}/>
              <BottomBanner {...props} session={this.state}/>
              </>
            )}/>

          <Route exact path='/destinations'
            render={props => (
              <>
              <MyNavbar {...props} handleLogout={this.handleLogout} session={this.state}/>
              <DestinationsPage {...props} session={this.state}/>
              <BottomBanner {...props} session={this.state}/>
              </>
            )}/> 
    
          <Route exact path='/destinations/:tripId'
            render={props => (
              <>
              <MyNavbar {...props} handleLogout={this.handleLogout} session={this.state}/>
              <CallApiSingleTrip {...props} session={this.state}/>
              <BottomBanner {...props} session={this.state}/>
              </>
            )}/>
          
          <Route exact path='/my-custom-trips'
            render={props => (
              <>
              <MyNavbar {...props} handleLogout={this.handleLogout} session={this.state}/>
              <UserCustomTripsPage {...props} handleLogin={this.handleLogin} handleLogout={this.handleLogout} session={this.state}/>
              <BottomBanner {...props} session={this.state}/>
              </>
            )}/>
          
          <Route>
            <NotFound />
          </Route>
        </Switch>
      </Router>
    )
  }
};

export default App;

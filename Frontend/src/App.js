import Navbar from "./Navbar";
import Home from "./Home";
import CallApiTripList from "./Destinations/CallApiTripList";
import CallApiSingleTrip from "./Destinations/Single Trip/CallApiSingleTrip";
import About from "./About";
import './index.css';
import {BrowserRouter as Router, Route, Switch} from "react-router-dom";
import { Component } from "react";
import UserCustomTrips from "./Users/UserCustomTrips";
import axios from "axios";

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

        console.log(response)
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
          <Navbar />   
              <Switch>
                <Route exact path='/'
                  render={props => (
                    <Home {...props} session={this.state}/>
                  )}/>
                  
                <Route exact path='/about'
                  render={props => (
                    <About {...props} session={this.state}/>
                  )}/>

                <Route exact path='/destinations'
                  render={props => (
                    <CallApiTripList {...props} session={this.state}/>
                  )}/>
          
                <Route exact path={'/destinations/:tripId'}
                  render={props => (
                    <CallApiSingleTrip {...props} session={this.state}/>
                  )}/>
               
                <Route exact path='/my-custom-trips'
                  render={props => (
                    <UserCustomTrips {...props} handleLogin={this.handleLogin} handleLogout={this.handleLogout} session={this.state}/>
                  )}/>

              </Switch>
      </Router>
    )
  }
};

export default App;

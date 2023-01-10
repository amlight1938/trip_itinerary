import React, { Component } from 'react';
import RegistrationOrLogin from './RegistrationOrLogin';
import { Button } from 'react-bootstrap';

class UserCustomTrips extends Component {
    constructor(props){
        super(props);
        
    this.handleSuccessfulAuthentication = this.handleSuccessfulAuthentication.bind(this)
    };

    handleSuccessfulAuthentication(data){
        this.props.handleLogin(data)
        this.props.history.push("/my-custom-trips")
    };

    handleLogoutClick(){
        this.props.handleLogout()
    }
    
    render() {
        return (
            <div className="container">
                <h3>User custom trips</h3>
   
                <h4>Registration</h4>
                <RegistrationOrLogin registration={true} handleSuccessfulAuthentication={this.handleSuccessfulAuthentication}/>

                <h4>Login</h4>
                <RegistrationOrLogin registration={false} handleSuccessfulAuthentication={this.handleSuccessfulAuthentication}/>

                <Button variant="outline-primary" onClick={() => this.handleLogoutClick()}>Logout</Button>
    
                <h4>Status: {this.props.session.isLoggedIn.toString()}</h4>
            </div>
        );
    };
}

export default UserCustomTrips;
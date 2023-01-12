import React, { Component } from 'react';
import RegistrationOrLoginForm from './RegistrationOrLoginForm';
import { Button } from 'react-bootstrap';

class UserCustomTripsPage extends Component {
    constructor(props){
        super(props);
        
    this.handleSuccessfulAuthentication = this.handleSuccessfulAuthentication.bind(this)
    };

    handleSuccessfulAuthentication(data){
        this.props.handleLogin(data)
        this.props.history.push("/my-custom-trips")
    };
    
    render() {
        return (
            <div className="container">
                <h3>User custom trips</h3>
                <hr/>

                <div> 
                    <h4>Registration</h4>
                    <RegistrationOrLoginForm registration={true} handleSuccessfulAuthentication={this.handleSuccessfulAuthentication}/>

                    <h4>Login</h4>
                    <RegistrationOrLoginForm registration={false} handleSuccessfulAuthentication={this.handleSuccessfulAuthentication}/>

                    {/* <Button variant="outline-primary" onClick={() => this.props.handleLogout()}>Logout</Button> */}

                    <h4>Status: {this.props.session.isLoggedIn.toString()}</h4>
                </div>

                <hr/>

                <div>
                    <h4>Make your own trip</h4>


                </div>
                
            </div>
        );
    };
}

export default UserCustomTripsPage;
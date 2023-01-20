import React, { Component } from 'react';
import RegistrationOrLoginForm from './RegistrationOrLoginForm';
import CustomTripForm from './CustomTripForm';

class UserCustomTripsPage extends Component {
    constructor(props){
        super(props);
        
    this.handleSuccessfulAuthentication = this.handleSuccessfulAuthentication.bind(this)
    };

    handleSuccessfulAuthentication(data){
        this.props.handleLogin(data)
        //this.props.history.push("/my-custom-trips")
    };
    
    render() {
        return (
            <div className="container">
                <h3>User custom trips</h3>
                <hr/>
 
                {!this.props.session.isLoggedIn 
                &&  <div style={{width: "400px", margin: "auto"}}>
                        <RegistrationOrLoginForm handleSuccessfulAuthentication={this.handleSuccessfulAuthentication}/>
                    </div>  
                }

                {this.props.session.isLoggedIn
                &&  <div>
                        <h4>Make your own trip</h4>
                        <CustomTripForm session={this.props.session}/>
                    </div>
                }
            </div>
        );
    };
}

export default UserCustomTripsPage;
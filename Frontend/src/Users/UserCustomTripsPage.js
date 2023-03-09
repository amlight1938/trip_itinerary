import React, { Component } from 'react';
import RegistrationOrLoginForm from './RegistrationOrLoginForm';
import CustomTripForm from './CustomTripForm';
import CallApiTripList from '../Destinations/CallApiTripList';
import TopBanner from '../TopBanner';
import lake from '../Assets/lake.jpg'

class UserCustomTripsPage extends Component {
    constructor(props){
        super(props);
        
    this.handleSuccessfulAuthentication = this.handleSuccessfulAuthentication.bind(this)
    };

    handleSuccessfulAuthentication(data){
        this.props.handleLogin(data)
    };
    
    render() {
        return (
            <>
                <TopBanner 
                    image={lake} 
                    position={"50% 48%"}
                    text={"USER CUSTOM TRIPS"}/>
           
                <div className="container">
                    {/* <h3>User custom trips</h3> */}
                    <hr/>
    
                    {!this.props.session.isLoggedIn 
                    &&  <div style={{width: "400px", margin: "auto"}}>
                            <RegistrationOrLoginForm handleSuccessfulAuthentication={this.handleSuccessfulAuthentication}/>
                        </div>  
                    }

                    {this.props.session.isLoggedIn
                    &&  <>
                        <div style={{margin: "auto"}}>
                            <h4 style={{textAlign: "center"}}>Make your own trip</h4>
                            <CustomTripForm session={this.props.session} />
                        </div>

                        <hr />

                        <CallApiTripList api_url={`https://trip-itinerary-backend-api.herokuapp.com/api/v1/search-by-user/${this.props.session.user.id}`}/>
                        </>
                    }
                </div>
            </>
        );
    };
}

export default UserCustomTripsPage;
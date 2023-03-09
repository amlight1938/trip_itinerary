import React, { Component } from 'react';
import { Button, Alert } from 'react-bootstrap';
import axios from 'axios';

class UpdateTripForm extends Component {
    constructor(props){
        super(props)
        this.state = {
            name: "",
            location: "",
            date: "",
            description: "",
            errors: "",
            showErrors: false,
            showSuccess: false,
        }

        this.handleChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    handleChange(event) {
        this.setState({
          [event.target.name]: event.target.value
        })
    }

    handleSubmit(event) {
        const {name, location, date, description} = this.state;
        const updated_trip = {
            ...(name.trim() !== "" && {name: name}),
            ...(location.trim() !== "" && {location: location}),
            ...(date.trim() !== "" && {date: date}),
            ...(description.trim() !== "" && {description: description}),
        };

        const api_url = `https://trip-itinerary-backend-api.herokuapp.com/api/v1/trips/${this.props.trip.id}`;

        console.log("updated trip" , updated_trip)
        axios
            .patch(api_url, 
                {updated_trip},
                {withCredentials: true})
            .then(response => {
                if(response.data.status === 'updated'){
                    this.setState({
                        showSuccess: true
                    })
                }else{
                    this.setState({
                        errors: response.data.errors,
                        showErrors: true
                    })
                }
                console.log("trip update response: ", response)})
            .catch(error => {
                this.setState({
                    errors: error.message,
                    showErrors: true
                })
                console.log('trip update response: ', error)
            })

        event.preventDefault();
        this.handleResetFields();
    };

    handleResetFields() {
        Array.from(document.querySelectorAll("input")).forEach(
          inputField => inputField.value = ""
        );
        this.setState({
            name: "",
            location: "",
            date: "",
            description: "",
        });
    };

    hideAlerts() {
        this.setState({
          showErrors: false,
          showSuccess: false
        })
    }

    render() {
        return (
            <div style={{width: "98%"}}>
                {this.state.showErrors 
                &&  <Alert variant="danger" onClose={() => this.hideAlerts()} dismissible>
                        <Alert.Heading>Oh snap! You got an error!</Alert.Heading>
                        <p>{this.state.errors}</p>
                    </Alert>
                }

                {this.state.showSuccess 
                &&  <Alert variant="success" onClose={() => this.hideAlerts()} dismissible>
                        <Alert.Heading>Trip successfully updated! Refresh page to see changes</Alert.Heading>
                    </Alert>
                }

                <h3>Update existing trip</h3>
                <br/>

                <form onSubmit={this.handleSubmit}>
                    {/* MAIN TRIP ENTRIES */}
                    <>
                    <label htmlFor="tripName"><b>Trip name</b> -- {this.props.trip.name}</label>
                    <input 
                        id="tripName"
                        className="inputField"
                        name="name"
                        placeholder="New trip name"
                        value={this.state.name}
                        onChange={this.handleChange}
                    />

                    <label htmlFor="tripLocation"><b>Trip location</b> -- {this.props.trip.location}</label>
                    <input 
                        id="tripLocation"
                        className="inputField"
                        name="location"
                        placeholder="New trip location"
                        value={this.state.location}
                        onChange={this.handleChange}
                    />

                    <label htmlFor="tripDate"><b>Trip date</b> -- {this.props.trip.date}</label>
                    <input 
                        id="tripDate"
                        className="inputField"
                        name="date"
                        type="date"
                        placeholder="New trip date"
                        value={this.state.date}
                        onChange={this.handleChange}
                    />

                    <label htmlFor="tripDescription"><b>Trip description</b> -- {this.props.trip.description}</label>
                    <input 
                        id="tripDescription"
                        className="inputField-long"
                        name="description"
                        placeholder="New trip description"
                        value={this.state.description}
                        onChange={this.handleChange}
                    />
                    </>

                    <div style={{display: "flex", justifyContent:"right", marginTop: "15px"}}>
                        <Button variant="secondary" onClick={() => this.props.setUpdateFormModalShow(false)} style={{marginRight: "10px"}}>Cancel</Button>  
                        <Button variant="primary" type="submit">Update trip</Button>
                    </div>
                </form>                          
            </div>
        );
    }
}

export default UpdateTripForm;
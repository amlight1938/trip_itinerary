import React, { Component } from 'react';
import { Button } from 'react-bootstrap';
import axios from 'axios';
import { Alert } from 'react-bootstrap';

class DeleteTripCheck extends Component {
    constructor(props) {
        super(props);
        this.state = {
            trip_id: this.props.trip_id,
            errors: "",
            showDeleteSuccess: false,
            showDeleteErrors: false
        }

        this.handleDeleteTripSubmit = this.handleDeleteTripSubmit.bind(this);
    }

    handleDeleteTripSubmit(event) {
        const {trip_id} = this.state;

        const api_url = `https://trip-itinerary-backend-api.herokuapp.com/api/v1/trips/${trip_id}`;

        axios
            .delete(api_url,
                {withCredentials: true})
            .then(response => {
                if(response.data.status === "deleted"){
                    this.setState({
                        showDeleteSuccess: true
                    })
                    setTimeout(() => this.props.handleSuccessfulDelete(), 3000);
                }else{
                    this.setState({
                        errors: response.data.errors,
                        showDeleteErrors: true
                    })
                }
                console.log("trip delete response: ", response)})
            .catch(error => {
                this.setState({
                    errors: error.message,
                    showDeleteErrors: true
                })
                console.log('trip delete response catch error: ', error)
            })

        event.preventDefault();
    };

    hideAlerts() {
        this.setState({
            showDeleteSuccess: false,
            showDeleteErrors: false
        })
    }

    render() {
        return (
            <div style={{width: "98%"}}>
                {!this.state.showDeleteErrors && !this.state.showDeleteSuccess &&
                <>
                    <h3>Delete Trip</h3>
                    <hr/>
                    <p>Are you sure you want to delete this trip?</p>
                    <br />
                    <hr />
                    <div style={{display: "flex", justifyContent:"right"}}>
                        <Button variant="secondary" onClick={() => this.props.setDeleteTripModalShow(false)} style={{marginRight: "10px"}}>Cancel</Button>
                        <Button variant="primary" onClick={this.handleDeleteTripSubmit}>Delete trip</Button>
                    </div>   
                </>                   
                }

                {this.state.showDeleteSuccess &&
                <>
                    <Alert variant="success" >
                        <Alert.Heading>Trip successfully deleted. Wait for redirecting...</Alert.Heading>
                    </Alert>
                </>
                }

                {this.state.showDeleteErrors &&
                <>
                    <Alert variant="danger" onClose={() => this.hideAlerts()} dismissible>
                        <Alert.Heading>Oh snap! You got an error!</Alert.Heading>
                        <p>{this.state.errors}</p>
                    </Alert>
                </>
                }
            </div>
        );
    }
}

export default DeleteTripCheck;
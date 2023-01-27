import React, { Component } from 'react';
import { Button } from 'react-bootstrap';
import axios from 'axios';

class DeleteTripCheck extends Component {
    constructor(props) {
        super(props);
        this.state = {
            trip_id: this.props.trip_id,
            errors: "",
            showSuccessToast: false,
            showErrors: false
        }

        this.handleDeleteTripSubmit = this.handleDeleteTripSubmit.bind(this);
    }

    handleDeleteTripSubmit(event) {
        console.log(this.state)

        const {trip_id} = this.state;

        const api_url = `http://localhost:3001/api/v1/trips/${trip_id}`;

        console.log("delete trip id" , trip_id)

        axios
            .delete(api_url,
                {withCredentials: true})
            .then(response => {
                if(response.data.status === "deleted"){
                    this.props.handleSuccessfulDelete()
                    // this.setState({
                    //     showSuccessToast: true
                    // })
                    // console.log("success trip delete response: ", response)
                }else{
                    this.setState({
                        errors: response.data.errors,
                        // showErrors: true
                    })
                    // console.log("error trip delete response: ", this.state.errors)
                }
                console.log("trip delete response: ", response)})
            .catch(error => {
                this.setState({
                    errors: error.message,
                    showErrors: true
                })
                console.log('trip delete response catch error: ', error)
            })

        event.preventDefault();
    };

    render() {
        return (
            <div>
                <h3>Delete Trip</h3>
                <hr/>
                <p>Are you sure you want to delete this trip?</p>
                <br />
                <hr />
                <div style={{display: "flex", justifyContent:"right"}}>
                    <Button variant="secondary" onClick={() => this.props.setDeleteTripModalShow(false)} style={{marginRight: "10px"}}>Cancel</Button>
                    <Button variant="primary" onClick={this.handleDeleteTripSubmit}>Delete trip</Button>
                </div>   
            </div>
        );
    }
}

export default DeleteTripCheck;
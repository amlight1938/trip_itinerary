import React, { Component } from 'react';
import { Button, Alert } from 'react-bootstrap';
import axios from 'axios';

class CustomTripForm extends Component {
    constructor(props){
        super(props)
        this.state = {
            user_id: this.props.session.user.id,
            name: "",
            location: "",
            date: "",
            description: "",
            activities: [],
            activity_input:"",
            itinerary: [],
            itin_day_input:"",
            itin_description_input:"",
            highlight_img_url: "",
            img_urls: [],
            errors: "",
            showErrors: false,
            showSuccess: false,
            showCustomTripForm: false
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
        const {user_id, name, location, date, description, activities, itinerary, highlight_img_url, img_urls} = this.state;
        const custom_trip = {
            user_id: user_id,
            name: name,
            location: location,
            date: date,
            description: description,
            activities: activities,
            itinerary: itinerary,
            highlight_img_url: highlight_img_url,
            img_urls: img_urls
        };

        const api_url = 'http://localhost:3001/api/v1/trips';

        axios
            .post(api_url, 
                {custom_trip},
                {withCredentials: true})
            .then(response => {
                if(response.data.status === 'created'){
                    this.setState({
                        showSuccess: true
                    })
                }else{
                    this.setState({
                        errors: response.data.errors,
                        showErrors: true
                    })
                }
                console.log("trip creation response: ", response)})
            .catch(error => {
                this.setState({
                    errors: error.message,
                    showErrors: true
                })
                console.log('trip creation response: ', error)
            })

        event.preventDefault();
        this.handleResetFields();
        this.hideCustomTripForm();
        window.scrollTo(0,0);
    };

    addNewActivity() {
        let {activities, activity_input} = this.state;
        if(activity_input.trim() !== "") {    
            activities.push(activity_input.trim())
            this.setState({
                activities: activities,
                activity_input: ""
            })
        }
    };

    addNewItinerary() {
        let {itinerary, itin_day_input, itin_description_input} = this.state;

        if(itin_day_input.trim() !== "" && itin_description_input.trim() !== "") {
            itinerary.push(itin_day_input.trim());
            itinerary.push(itin_description_input.trim());
            this.setState({
                itinerary: itinerary,
                itin_day_input: "",
                itin_description_input: ""
            })
        }
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
            activities: [],
            activity_input:"",
            itinerary: [],
            itin_day_input:"",
            itin_description_input:"",
        });
    };

    hideAlerts() {
        this.setState({
          showErrors: false,
          showSuccess: false
        })
    }

    customTripFormShow(){
        this.setState({
            showCustomTripForm: true
        })
        this.hideAlerts();
    }

    hideCustomTripForm(){
        this.setState({
            showCustomTripForm: false
        })
    }

    render() {
        return (
            <div style={{display: "grid", justifyItems: "center"}}>
                {this.state.showErrors 
                &&  <Alert variant="danger" onClose={() => this.hideAlerts()} dismissible>
                        <Alert.Heading>Oh snap! You got an error!</Alert.Heading>
                        <p>{this.state.errors}</p>
                    </Alert>
                }

                {this.state.showSuccess 
                &&  <Alert variant="success" onClose={() => this.hideAlerts()} dismissible>
                        <Alert.Heading>Trip successfully created! Refresh page to see new trip</Alert.Heading>
                    </Alert>
                }

                {!this.state.showCustomTripForm 
                    &&  <Button variant="primary" style={{marginBottom: "10px", width: "170px"}} onClick={() => this.customTripFormShow()}>Add a custom trip</Button>
                }

                {this.state.showCustomTripForm 
                &&  <>
                    <Button variant="primary" style={{width: "170px"}} onClick={() => [this.hideCustomTripForm(), this.handleResetFields()]}>Cancel</Button>
                
                    <form onSubmit={this.handleSubmit}>
                        {/* MAIN TRIP ENTRIES */}
                        <>
                        <label htmlFor="tripName">Trip name</label>
                        <input 
                            id="tripName"
                            className="inputField"
                            name="name"
                            placeholder="Trip name"
                            value={this.state.name}
                            onChange={this.handleChange}
                            required
                        />

                        <label htmlFor="tripLocation">Trip location</label>
                        <input 
                            id="tripLocation"
                            className="inputField"
                            name="location"
                            placeholder="Trip location"
                            value={this.state.location}
                            onChange={this.handleChange}
                            required
                        />

                        <label htmlFor="tripDate">Trip date</label>
                        <input 
                            id="tripDate"
                            className="inputField"
                            name="date"
                            type="date"
                            placeholder="Trip date"
                            value={this.state.date}
                            onChange={this.handleChange}
                            required
                        />

                        <label htmlFor="tripDescription">Trip description</label>
                        <input 
                            id="tripDescription"
                            className="inputField-long"
                            name="description"
                            placeholder="Trip description"
                            value={this.state.description}
                            onChange={this.handleChange}
                            required
                        />
                        </>

                        <hr />

                        {/* ACTIVITIES */}
                        <>
                        <h6>ACTIVITIES</h6>
                        {this.state.activities.map((activity, index) => {
                            return(<p key={index} >{activity}</p>)
                        })}

                        <div className="addMoreInput" style={{display: "flex"}}>
                            <div style={{flex: ".75"}}>
                            <label htmlFor="tripActivities">Trip activity</label>
                            <input
                                id="tripActivities"
                                className="inputField"
                                name="activity_input"
                                placeholder="Trip activity"
                                value={this.state.activity_input}
                                onChange={this.handleChange}
                            />
                            </div>
                            <Button variant="secondary" className="addItemButton" onClick={() => this.addNewActivity()} style={{flex: ".2"}}>Add this item</Button>
                        </div>
                        </>

                        <hr />

                        {/* ITINERARIES */}
                        <>
                        <h6>ITINERARY</h6>                  
                        {this.state.itinerary.map((day_itinerary, iteration) => {
                            if (iteration !== this.state.itinerary.length - 1 && iteration % 2 === 0){
                                return(<p key={iteration} >{day_itinerary + " --> " + this.state.itinerary[iteration+1]}</p>)
                            }
                        })}

                        <div className="addMoreInput" style={{display: "flex"}}>
                            <div style={{flex: ".75"}}>
                                <label htmlFor="tripItinDays">Itinerary days</label>
                                <input
                                    id="tripItinDays"
                                    className="inputField"
                                    name="itin_day_input"
                                    placeholder="example: Day 1 or Days 2-5"
                                    value={this.state.itin_day_input}
                                    onChange={this.handleChange}
                                />

                                <label htmlFor="tripItinDescription">Itinerary description</label>
                                <input
                                    id="tripItinDescription"
                                    className="inputField"
                                    name="itin_description_input"
                                    placeholder="Do something today"
                                    value={this.state.itin_description_input}
                                    onChange={this.handleChange}
                                />
                            </div>
                            <Button variant="secondary" className="addItemButton" onClick={() => this.addNewItinerary()} style={{flex: ".2"}}>Add this item</Button>
                        </div>
                        </>

                        <Button variant="outline-primary" style={{width: "100%", marginTop: "15px"}} type="submit">Create custom trip</Button>
                    </form> 
                    </>
                }             
            </div>
        );
    }
}

export default CustomTripForm;
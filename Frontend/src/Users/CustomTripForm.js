import React, { Component } from 'react';
import { Button } from 'react-bootstrap';

class CustomTripForm extends Component {
    constructor(props){
        super(props)
        this.state = {
            name: "",
            location: "",
            date: "",
            description: "",
            activities: [],
            activity_input:"",
            itinerary: [["day", "stuff"]],
            itin_day_input:"",
            itin_dectription_input:"",
        }

        this.handleChange = this.handleChange.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }


    handleChange(event) {
        this.setState({
          [event.target.name]: event.target.value
        })
    }

    handleSubmit() {

    }

    addNewActivity() {
        let {activities, activity_input} = this.state;
        activities.push(activity_input)
        this.setState({
            activities: activities,
            activity_input: ""
        })
    }

    addNewItinerary() {
        let {itinerary, itin_day_input, itin_dectription_input} = this.state;
        itinerary.push([itin_day_input, itin_dectription_input]);
        this.setState({
            itinerary: itinerary,
            itin_day_input: "",
            itin_dectription_input: ""
        })
    }

    render() {
        return (
            <div>
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
                    {this.state.activities.map((activity) => {
                        return(<p>{activity}</p>)
                    })}

                    <div className="addMoreInput" style={{display: "flex"}}>
                        <div style={{flex: ".8"}}>
                        <label htmlFor="tripActivities">Trip activity</label>
                        <input
                            id="tripActivities"
                            className="inputField"
                            name="activity_input"
                            placeholder="Trip activity"
                            value={this.state.activity_input}
                            onChange={this.handleChange}
                            required
                        />
                        </div>
                        <Button variant="secondary" onClick={() => this.addNewActivity()} style={{flex: ".2"}}>Add this item</Button>
                    </div>
                    </>

                    <hr />



                    {/* ITINERARIES */}
                    <>
                    <h6>ITINERARY</h6>                   
                    {this.state.itinerary.map((day_itinerary) => {
                        return(<p>{day_itinerary[0] + " --> " + day_itinerary[1]}</p>)
                    })}

                    <div className="addMoreInput" style={{display: "flex"}}>
                        <div style={{flex: ".8"}}>
                            <label htmlFor="tripItinDays">Itinerary days</label>
                            <input
                                id="tripItinDays"
                                className="inputField"
                                name="itin_day_input"
                                placeholder="example: Day 1 or Days 2-5"
                                value={this.state.itin_day_input}
                                onChange={this.handleChange}
                                required
                            />

                            <label htmlFor="tripItinDescription">Itinerary description</label>
                            <input
                                id="tripItinDescription"
                                className="inputField"
                                name="itin_dectription_input"
                                placeholder="Do something today"
                                value={this.state.itin_dectription_input}
                                onChange={this.handleChange}
                                required
                            />
                        </div>
                        <Button variant="secondary" onClick={() => this.addNewItinerary()} style={{flex: ".2"}}>Add this item</Button>
                    </div>
                    </>

                    <Button variant="outline-primary" style={{width: "100%", marginTop: "15px"}}type="submit">{this.state.isRegistration ? 'Create Account' : 'Login'}</Button>
                </form> 
                
                        
            </div>
        );
    }
}

export default CustomTripForm;
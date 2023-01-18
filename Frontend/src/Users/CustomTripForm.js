import React, { Component } from 'react';
import { Button } from 'react-bootstrap';

class CustomTripForm extends Component {
    constructor(props){
        super(props)
        this.state = {
            name: "",
            location: "",
            date_input: "",
            sYear: "",
            sMonth: "",
            sDay: "",
            description: "",
            activities: [],
            activity_input:"",
            itinerary: [],
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

    handleSubmit(event) {
        this.getDateFromInput();
        console.log(this.state);
        this.handleResetFields();
        event.preventDefault();
    }

    addNewActivity() {
        let {activities, activity_input} = this.state;
        if(activity_input.trim() !== "") {    
            activities.push(activity_input.trim())
            this.setState({
                activities: activities,
                activity_input: ""
            })
        }
    }

    addNewItinerary() {
        let {itinerary, itin_day_input, itin_dectription_input} = this.state;
        if(itin_day_input.trim() !== "" && itin_dectription_input.trim() !== "") {
            itinerary.push([itin_day_input.trim(), itin_dectription_input.trim()]);
            this.setState({
                itinerary: itinerary,
                itin_day_input: "",
                itin_dectription_input: ""
            })
        }
    }

    getDateFromInput(){
        let {date_input} = this.state;
        let dash_idx_1 = date_input.indexOf("-");
        let dash_idx_2 = date_input.lastIndexOf("-");

        let year = date_input.substring(0,dash_idx_1);
        let month = date_input.substring(dash_idx_1 + 1, dash_idx_2);
        let day = date_input.substring(dash_idx_2 + 1);

        this.setState({
            sYear: year,
            sMonth: month,
            sDay: day
        })
    }

    handleResetFields() {
        Array.from(document.querySelectorAll("input")).forEach(
          inputField => inputField.value = ""
        );
        this.setState({
            name: "",
            location: "",
            date_input: "",
            sYear: "",
            sMonth: "",
            sDay: "",
            description: "",
            activities: [],
            activity_input:"",
            itinerary: [],
            itin_day_input:"",
            itin_dectription_input:"",
        });
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
                        name="date_input"
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
                            />

                            <label htmlFor="tripItinDescription">Itinerary description</label>
                            <input
                                id="tripItinDescription"
                                className="inputField"
                                name="itin_dectription_input"
                                placeholder="Do something today"
                                value={this.state.itin_dectription_input}
                                onChange={this.handleChange}
                            />
                        </div>
                        <Button variant="secondary" onClick={() => this.addNewItinerary()} style={{flex: ".2"}}>Add this item</Button>
                    </div>
                    </>

                    <Button variant="outline-primary" style={{width: "100%", marginTop: "15px"}} type="submit">{this.state.isRegistration ? 'Create Account' : 'Login'}</Button>
                </form> 
                
                        
            </div>
        );
    }
}

export default CustomTripForm;
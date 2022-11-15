import React, { Component } from "react";
import TripCardList from "./TripCardList";

const api_url = 'http://localhost:3001/api/v1/trips'

class TripList extends Component{
    constructor(props){
        super(props)    
        this.state = {
            trips: [],
            loading: true,
            didFetchSucceed: false
        }
    }

    componentDidMount() {
        this.getTrips();
    };

    getTrips() {
        fetch(api_url)
        .then(response => response.json())
        .then(data => {
            this.setState({
                trips: data,
                didFetchSucceed: true
            })
        }).catch(err => {
            console.log(err)
            
        }).finally(() => {
            this.setState({
                loading: false
            })
        })
    };
    
    render () {
        if (this.state.loading) {
            return <h3>Loading...</h3>
        }

        if (!this.state.didFetchSucceed) {
            return <h3>Data failed to load :(</h3>
        }

        console.log(this.state.trips)
        return (
            <div>
                <div className="container">
                    <TripCardList trips={this.state.trips}/>
                </div>
            </div>
        )
    };

}

export default TripList;

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

        return (
            <div>
                <h1>Destinations...</h1>               
                <TripCardList {...this.state.trips}/>
            </div>
        )
    };

}

export default TripList;

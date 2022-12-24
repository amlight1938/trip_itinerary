import React, { Component } from "react";
import TripCardList from "./TripCardList";

const api_url = 'http://localhost:3001/api/v1/trips'

class TripList extends Component{
    constructor(props){
        super(props)    
        this.state = {
            trips: [],
            activities: [],
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
        .then(api_package => {
            console.log(api_package)
            this.setState({
                trips: api_package.data,
                activities: api_package.included,
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

        console.log(this.state)
        return (
            <div>
                <div className="container">
                    <TripCardList state={this.state}/>
                </div>
            </div>
        )
    };

}

export default TripList;

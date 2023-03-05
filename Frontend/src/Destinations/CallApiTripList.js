import React, { Component } from "react";
import useApiRequest from "../Helper functions/useApiRequest";
import TripCardList from "./TripCardList";

const CallApiTripList = ({api_url}) => {
    const {data: trips, isLoading, errors} = useApiRequest(api_url)

    return (
        <div className="container">
            {isLoading && <h3>Loading...</h3>}
            {errors && <h3>Data failed to load :(</h3>}
            {!errors && !isLoading && trips.length !== 0 && <TripCardList trips = {trips}/>}
            {!errors && !isLoading && trips.length === 0 && <h3>You have no custom trips created</h3>}
        </div>
    );
}
 
export default CallApiTripList;

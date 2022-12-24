import React, { Component } from "react";
import useApiRequest from "../../Helper functions/useApiRequest";
import TripCardList from "../TripCardList";

const CallApiSingleTrip = () => {
    const api_url = 'http://localhost:3001/api/v1/trips'
    const {data: trip, isLoading, errors} = useApiRequest(api_url)


    return (
        <div className="container">
            {isLoading && <h3>Loading...</h3>}
            {errors && <h3>Data failed to load :(</h3>}
            {/* {trip == null && <h3>loaded data is empty :(</h3>} */}
            {/* {trip && SINGLE TRIP DETAILS COMPONENT} */}
        </div>
    );
}
 
export default CallApiSingleTrip;

import React, { Component } from "react";
import { useParams } from "react-router-dom";
import useApiRequest from "../../Helper functions/useApiRequest";
import TripDetails from "./TripDetails";

const CallApiSingleTrip = () => {
    const {tripId} = useParams();
    const api_url = `http://localhost:3001/api/v1/trips/${tripId}`;
    const {data: trip, isLoading, errors} = useApiRequest(api_url)

    return (
        <div className="container">
            {isLoading && <h3>Loading...</h3>}
            {errors && <h3>Data failed to load :(</h3>}
            {!errors && !isLoading && <TripDetails trip={trip}/>}
        </div>
    );
}
 
export default CallApiSingleTrip;

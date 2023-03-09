import React, { Component } from "react";
import { useParams } from "react-router-dom";
import useApiRequest from "../../Helper functions/useApiRequest";
import TripDetails from "./TripDetails";

const CallApiSingleTrip = (props) => {
    const {tripId} = useParams();
    const api_url = `https://trip-itinerary-backend-api.herokuapp.com/api/v1/trips/${tripId}`;
    const {data: trip, isLoading, errors} = useApiRequest(api_url)

    return (
        <div>
            {isLoading && <h3>Loading...</h3>}
            {errors && <h3>Data failed to load :(</h3>}
            {!errors && !isLoading &&
            <>
                {trip.user === null
                    
                    ?   //no user associated with trip so not custom trip
                        <TripDetails trip={trip}/>
                                          
                    :   //check if logged in and if user id and trip's user id match
                    <>
                        {props.session.isLoggedIn && (trip.user.id === props.session.user.id)
                            ? <TripDetails trip={trip}/>
                            : <h2 className="container">Data not found :(  You must be logged in to view your custom trips</h2>
                        }
                    </>
                }
            </>
            }
        </div>
    );
}
 
export default CallApiSingleTrip;

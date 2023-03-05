import TripCard from "./TripCard";
import SearchBar from "../Helper functions/SearchBar";
import { useState } from "react";

const TripCardList = (props) => {
    let trips = props.trips;

    const [filteredTripList, setFilteredTripList] = useState(trips)

    const filterTripsFunc = (filter) => {
        setFilteredTripList(filter)
    }

    return ( 
        <div>
            <div style={{}} className="search-and-filter">
                <SearchBar data={trips} filterTripsFunc={filterTripsFunc}/>
            </div>

            {filteredTripList.length === 0 
            ?   <h1 style={{textAlign: "center"}}>No results found</h1>    
            :   <div className="row row-cols-1 row-cols-md-4 g-4">   
                    {filteredTripList.map(trip => {
                        return (
                            <div className="col" key={trip.id}>    
                                <TripCard trip={trip} />
                            </div>
                        )
                    })}  
                </div>
            }          
        </div>
     );
}
 
export default TripCardList;
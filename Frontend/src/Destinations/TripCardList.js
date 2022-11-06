import TripCard from "./TripCard";

const TripCardList = (props) => {
    return ( 
        <div className="row row-cols-1 row-cols-md-3 g-4">
            <div className="col">               
                <ul id="trip_list"> 
                    {props.trips.map( (trip) => {
                        <li key={trip.id}>
                            {trip.name}
                        </li>
                        
                    })}
                </ul>
                    
                 
            </div>
        </div>
     );
}
 
export default TripCardList;
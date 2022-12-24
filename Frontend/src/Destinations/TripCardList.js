import TripCard from "./TripCard";
import { getActivity } from "../utils";

const TripCardList = (props) => {
    let trips = props.trips;

    return ( 
        <div className="row row-cols-1 row-cols-md-3 g-4">      
            {trips.map(trip => {
                return (
                    <div className="col" key={trip.id}>    
                        <TripCard trip={trip} />
                    </div>
                )
            })}
        </div>
     );
}
 
export default TripCardList;
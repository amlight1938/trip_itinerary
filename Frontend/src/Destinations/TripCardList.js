import TripCard from "./TripCard";
import { getActivity } from "../utils";

const TripCardList = (props) => {
    let state = props.state;

    return ( 
        <div className="row row-cols-1 row-cols-md-3 g-4">
            {/* {console.log(props.state)} */}
            
            {props.state.trips.map(trip => {
                console.log(props.state)
                // console.log(trip.relationships.activities.data)

                let trip_activity_list = getActivity(trip.id, state.activities)
                return (
                    <div className="col" key={trip.id}>    
                        <TripCard trip={trip} activities={trip_activity_list}/>
                    </div>
                )
            })}
        </div>
     );
}
 
export default TripCardList;
import TripCard from "./TripCard";

const TripCardList = (props) => {
    return ( 
        <div className="row row-cols-1 row-cols-md-3 g-4">
            
            {props.trips.map(trip => {
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
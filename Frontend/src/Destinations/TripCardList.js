import TripCard from "./TripCard";

const TripCardList = (props) => {
    return ( 
        <div classname="container">
            <div class="row row-cols-1 row-cols-md-3 g-4">
                {props.trips.map(trip => {
                    return (
                        <div className="col">    
                            <TripCard trip={trip} />
                        </div>
                    )
                })}
            </div>
        </div>
     );
}
 
export default TripCardList;
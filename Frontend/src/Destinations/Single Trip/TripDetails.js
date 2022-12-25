const TripDetails = ({trip}) => {
    // console.log(trip)
    return (
          
        <div className="container">
            <h3>Trip details: {trip.name}</h3>
            <h3>{trip.location}</h3>
            <h3>Itinerary: {trip.itinerary.itinerary_description}</h3>
        </div>
        
    );
}
 
export default TripDetails;
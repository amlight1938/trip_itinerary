import longs_peak from "../Assets/longs_peak.jpg"
import { build_activity_list } from "../Helper functions/utils";

const TripCard = (props) => {
    
    const trip = props.trip;

    const activities_str = build_activity_list(trip.activities).join(', ');

    return ( 
        
        <div className="card" style={{width: "18rem"}}>
            <img src={longs_peak} className="card-img-top" alt="..." />
            <div className="card-body">
                <h5 className="card-title">{trip.name}</h5>
                <p className="card-text">{trip.description}</p>
            </div>
            <ul className="list-group list-group-flush">
                <li className="list-group-item">{trip.location}</li>
                <li className="list-group-item">{trip.date}</li>
                <li className="list-group-item">{activities_str}</li>
            </ul>
            <div className="card-body">
                <a href="#" className="card-link">Sample itinerary link</a>
                <a href="#" className="card-link">Another link</a>
            </div>
        </div>
     );
}
 
export default TripCard;
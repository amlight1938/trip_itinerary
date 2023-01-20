import longs_peak from "../Assets/longs_peak.jpg"
import { build_activity_list } from "../Helper functions/utils";
import { Link } from "react-router-dom";

const TripCard = (props) => {
    
    const trip = props.trip;

    // const activities_str = build_activity_list(trip.activities).join(', ');

    return ( 
        
        <div className="card h-100" style={{width: "19rem"}}>
            <Link to={`/destinations/${trip.id}`}>
                <img src={longs_peak} className="card-img-top" alt="..." />
                <div className="card-body">
                    <h5 className="card-title">{trip.name}</h5>
                    <hr />
                    <p className="card-text" style={{height:"120px" }}>{trip.description}</p>
                    {/* <hr />
                    <p className="card-text">{<b>Date:  </b>} {trip.date}</p>
                    <p className="card-text">{<b>Location:  </b>} {trip.location}</p>
                    <p className="card-text">{<b>Activities:  </b>} {activities_str}</p>           */}
                </div>
            </Link>
        </div>
     );
}
 
export default TripCard;
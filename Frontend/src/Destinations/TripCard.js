import longs_peak from "../Assets/longs_peak.jpg"
import new_york from "../Assets/new_york.jpg"
import { build_activity_list } from "../Helper functions/utils";
import { Link } from "react-router-dom";

const TripCard = (props) => {
    
    const trip = props.trip;

    let image;
    {trip.image === undefined ? image = trip.highlight_img_url : image = trip.image}

    const card_img_styles = {
        height: "170px",
        width: "100%",
        backgroundImage: `url('${image}')`,
        backgroundSize: "cover",
        backgroundPosition: "50% 36%",
        border: "0px"
    }

    // const activities_str = build_activity_list(trip.activities).join(', ');

    return ( 
        
        <div className="card h-100" style={{width: "19rem"}}>
            <Link to={`/destinations/${trip.id}`}>
                <div className="card-top" style={card_img_styles}></div>
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
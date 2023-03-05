import guatemala_sunrise from "../Assets/guatemala_sunrise.jpg"
import { Link } from "react-router-dom";

const TripCard = (props) => {
    
    const trip = props.trip;

    const default_img = guatemala_sunrise;

    let image;
    {trip.image === undefined 
        ?   trip.user_id !== null 
                ? image = default_img
                : image = trip.highlight_img_url           
        :   image = trip.image
    }

    const card_img_styles = {
        height: "170px",
        width: "100%",
        backgroundImage: `url('${image}')`,
        backgroundSize: "cover",
        backgroundPosition: "50% 36%",
        border: "0px"
    }

    return ( 
        
        <div className="card h-100" style={{width: "19rem"}}>
            <Link to={`/destinations/${trip.id}`}>
                <div className="card-top" style={card_img_styles}></div>
                <div className="card-body">
                    <h5 className="card-title">{trip.name}</h5>
                    <hr />
                    <p className="card-text" style={{height:"120px" }}>{trip.description}</p>
                </div>
            </Link>
        </div>
     );
}
 
export default TripCard;
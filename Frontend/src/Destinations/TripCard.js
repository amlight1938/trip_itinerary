import longs_peak from "../Assets/longs_peak.jpg"

const TripCard = (props) => {
    return ( 
        <div className="card" style={{width: "18rem"}}>
            <img src={longs_peak} className="card-img-top" alt="..." />
            <div className="card-body">
                <h5 className="card-title">{props.trip.name}</h5>
                <p className="card-text">{props.trip.description}</p>
            </div>
            <ul className="list-group list-group-flush">
                <li className="list-group-item">{props.trip.location}</li>
                <li className="list-group-item">{props.trip.date}</li>
                <li className="list-group-item">Activities list here</li>
            </ul>
            <div className="card-body">
                <a href="#" className="card-link">Sample itinerary link</a>
                <a href="#" className="card-link">Another link</a>
            </div>
        </div>
     );
}
 
export default TripCard;
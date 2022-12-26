import new_york from '../../Assets/new_york.jpg'
import Paragraph from '../../Paragraph';


const TripDetails = ({trip}) => {

    // let iteration_count = 0;
    // let left_pic = null;

    return (     
        <div className="container">
            <h3>Trip details: {trip.name}</h3>

            {trip.itineraries.map((itin) => {
                // iteration_count % 2 !== 0 ? left_pic = true : left_pic = false;
                // iteration_count++;
                return(
                    <div key={itin.id}>
                        <Paragraph 
                            title={itin.day_number}
                            pgraph={itin.day_itinerary} 
                            image={null} 
                            img_left_bool={false}
                        />
                    </div>
                )               
            })}

        </div> 
    );
}
 
export default TripDetails;
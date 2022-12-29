
import new_york from '../../Assets/new_york.jpg'
import colorado from '../../Assets/colorado.jpg'
import biking from '../../Assets/biking.jpg'
import longs_peak from '../../Assets/longs_peak.jpg'
import puerto_rico from '../../Assets/puerto_rico.jpg'
import italy_hike from '../../Assets/italy_hike.jpg'

import DisplayParagraphAndImage from "../../Paragraph and image section/DisplayParagraphAndImage"
import ImageSlider from './ImageSlider';

const TripDetails = ({trip}) => {

    //TODO make call to AWS to get pictures

    //TODO make trip photo caraousel

    const alternateSides = false;
    const noImage = true;
    const id = "id"
    const title = "day_number"
    const pgraph = "day_itinerary"
    const image = "image"



    const containerStyles = {
        width: "100%",
        height: "500px",
        margin: "0 auto",
      };

    const slides = [new_york, colorado, biking, longs_peak, puerto_rico, italy_hike];

    return(
        <>
            <div style={containerStyles}>
                <ImageSlider slides={slides} />
            </div>

            <DisplayParagraphAndImage obj_list={trip.itineraries} idField={id} titleField={title} 
                pgraphField={pgraph} imageField={image} alternate_sides={alternateSides} no_image={noImage}/> 
        </>
    );
}
 
export default TripDetails;
import new_york from '../../Assets/new_york.jpg'
import DisplayParagraphAndImage from "../../Paragraph and image section/DisplayParagraphAndImage"

const TripDetails = ({trip}) => {

    //TODO make call to AWS to get pictures

    //TODO make trip photo caraousel

    const alternateSides = false;
    const noImage = true;
    const id = "id"
    const title = "day_number"
    const pgraph = "day_itinerary"
    const image = "image"

    
    return(

        <DisplayParagraphAndImage obj_list={trip.itineraries} idField={id} titleField={title} 
            pgraphField={pgraph} imageField={image} alternate_sides={alternateSides} no_image={noImage}/> 
    );
}
 
export default TripDetails;
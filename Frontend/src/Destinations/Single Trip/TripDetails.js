
import new_york from '../../Assets/new_york.jpg'
import colorado from '../../Assets/colorado.jpg'
import biking from '../../Assets/biking.jpg'
import longs_peak from '../../Assets/longs_peak.jpg'
import puerto_rico from '../../Assets/puerto_rico.jpg'
import italy_hike from '../../Assets/italy_hike.jpg'

import DisplayParagraphAndImage from "../../Paragraph and image section/DisplayParagraphAndImage"
import Slider from './Slider.js'
import { useState } from 'react'
import { Button } from 'react-bootstrap'
import ModalFunc from '../../ModalFunc'

const TripDetails = ({trip}) => {

    const [modalShow, setModalShow] = useState(false);
    //TODO make call to AWS to get pictures

    //TODO make trip photo caraousel

    const alternateSides = false;
    const noImage = true;
    const id = "id"
    const title = "day_number"
    const pgraph = "day_itinerary"
    const image = "image"


    const slides = [new_york, colorado, biking, longs_peak, puerto_rico, italy_hike];

    return(
        <>

            <Button variant="primary" onClick={() => setModalShow(true)}>
                Launch vertically centered modal
            </Button>

            <ModalFunc
                show={modalShow}
                onHide={() => setModalShow(false)} 
                content={<Slider slides={slides} />} 
                styles_header = {{
                    backgroundColor: "rgba(22, 22, 26, 0.529)"
                }}
                styles_body = {{
                    height: "700px",
                    width: "700px%",
                    backgroundColor: "rgba(22, 22, 26, 0.529)"
                }}
            />

            




            {/* <div style={containerStyles}> */}
                {/* <Slider slides={slides} /> */}
            {/* </div> */}

            <DisplayParagraphAndImage obj_list={trip.itineraries} idField={id} titleField={title} 
                pgraphField={pgraph} imageField={image} alternate_sides={alternateSides} no_image={noImage}/> 
        </>
    );
}
 
export default TripDetails;


// const containerStyles = {
//     width: "100%",
//     height: "600px",
//     margin: "0 auto",
//     // backgroundColor: "blue",
//     position: "relative"
//   };
import new_york from '../../Assets/new_york.jpg'
import colorado from '../../Assets/colorado.jpg'
import biking from '../../Assets/biking.jpg'
import longs_peak from '../../Assets/longs_peak.jpg'
import puerto_rico from '../../Assets/puerto_rico.jpg'
import italy_hike from '../../Assets/italy_hike.jpg'

import DisplayParagraphAndImage from "../../Paragraph and image section/DisplayParagraphAndImage"
import ImageGallery from './ImageGallery.js'
import { useState } from 'react'
import { Button } from 'react-bootstrap'
import ModalFunc from './ModalFunc'
import CarouselFade from '../../CarouselFade'
import { build_activity_list } from '../../Helper functions/utils'

const TripDetails = ({trip}) => {

    const [modalShow, setModalShow] = useState(false);

    //TODO make call to AWS to get pictures


    //DisplayParagraph
    const alternateSides = false;
    const noImage = true;
    const id = "id"
    const title = "day_number"
    const pgraph = "day_itinerary"
    const image = "image"

    //CarouselFade
    const controls_bool = false;
    const caption_bool = false;
    const indicator_bool = false;
    const carousel_css = {
        height: "250px",
        width: "100%",
        margin: "10px auto",
        display: "flex",
        alignItems: "center",
        justifyContent: "center",
        cursor: "pointer",
        position: "relative",
        borderRadius: "15px",
        overflow: "hidden",
        backgroundColor: "rgb(0,0,0,.7)",
    }
    const carousel_items = [
        {id: 1, image: new_york},
        {id: 2, image: colorado},
        {id: 3, image: longs_peak}
    ]
    
    //ImageGallery
    const slides = [new_york, colorado, biking, longs_peak, puerto_rico, italy_hike];

    return(
        <div className="trip-details-content">
            <div className="column">
                <h1><b>{trip.name}</b></h1>
                <h4>{trip.location}</h4>
                <br />
                <p>{trip.description}</p>

                <div className="itineraryDiv">
                    <h3><b>Itinerary</b></h3>
                    <DisplayParagraphAndImage obj_list={trip.itineraries} idField={id} titleField={title} 
                        pgraphField={pgraph} imageField={image} alternate_sides={alternateSides} no_image={noImage}/> 
                </div>
            </div>

            <div className="column">
                <div className="fixed-sidebar">
                    <div className="sidebar-info">
                        <p><b>Date: </b> {trip.date}</p>
                        <p><b>Location: </b>{trip.location}</p>
                        <p><b>Activities:</b></p>
                        {build_activity_list(trip.activities).map((activity) => {
                            return(
                                <p key={activity} className="half-line-height" >&emsp;{"- " + activity}</p>
                            )
                        })
                        }
                       
                        <Button variant="primary" className="book-btn" size="md" ><b>Book This Trip</b></Button>                        
                    </div>
                    
                    <ModalFunc
                        show={modalShow}
                        onHide={() => setModalShow(false)} 
                        content={<ImageGallery slides={slides} />}
                        styles_header={{height: "20px"}}
                    />
                    <div className="trip-details-carousel-container" style={carousel_css} onClick={() => setModalShow(true)}>
                        <CarouselFade 
                            carousel_items={carousel_items} 
                            controls_bool={controls_bool} 
                            caption_bool={caption_bool}
                            indicator_bool={indicator_bool}
                        />     
                        <div className="overlay-carousel">
                            <h3><b>SEE ALL PHOTOS</b></h3>
                        </div>         
                    </div>
                </div>
            </div>           
        </div>
    );
}
 
export default TripDetails;

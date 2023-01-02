
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
import ModalFunc from './ModalFunc'
import CarouselFadeExample from '../../CarouselFadeExample'
import Carousel3 from '../../Carousel3'
import { build_activity_list } from '../../Helper functions/utils'

const TripDetails = ({trip}) => {

    const [modalShow, setModalShow] = useState(false);
    //TODO make call to AWS to get pictures

    //TODO make trip photo caraousel
    const carousel_items = [
        {id: 1, class: 'carousel-item active', image: new_york, caption: 'Adventure is out there!', subcaption: 'Explore new activities that will get your heart racing'},
        {id: 2, class: 'carousel-item',image: colorado, caption: 'See what the world has to offer', subcaption: 'Build lasting memories with family and friends'},
        {id: 3, class: 'carousel-item',image: longs_peak, caption: 'Find your dream destination', subcaption: 'You\'ll never know whats out there until you see it for yourself' }
    ]

    const alternateSides = false;
    const noImage = true;
    const id = "id"
    const title = "day_number"
    const pgraph = "day_itinerary"
    const image = "image"

    const carousel_css = {
        // backgroundColor: "red",
        height: "400px",
        width: "500px",
        margin: "auto",
        display: "flex",
        alignItems: "center",
        justifyContent: "center",  
    }
    


    const slides = [new_york, colorado, biking, longs_peak, puerto_rico, italy_hike];

    return(
        <div className="trip-details-content">
            <div className="column">
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
                                <p className="half-line-height">&emsp;{"- " + activity}</p>
                            )
                        })
                        }
                       
                        <Button variant="primary" className="btn-primary" size="md" ><b>Book This Trip</b></Button>  
                        
                        
                        
                    </div>

                    
                    <ModalFunc
                        show={modalShow}
                        onHide={() => setModalShow(false)} 
                        content={<Slider slides={slides} />}
                        styles_header={{height: "20px"}}
                    />
                    <div className="trip-details-carousel" onClick={() => setModalShow(true)}>
                        <CarouselFadeExample 
                        carousel_items={carousel_items} 
                        controls_bool={false} 
                        caption_bool={false}
                        indicator_bool={false}
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

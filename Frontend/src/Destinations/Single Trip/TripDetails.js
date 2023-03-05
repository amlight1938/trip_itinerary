import guatemala_sunrise from '../../Assets/guatemala_sunrise.jpg'
import DisplayParagraphAndImage from "../../Paragraph and image section/DisplayParagraphAndImage"
import ImageGallery from './ImageGallery.js'
import { useState } from 'react'
import { Button } from 'react-bootstrap'
import ModalFunc from './ModalFunc'
import CarouselFade from '../../CarouselFade'
import { build_activity_list, build_img_URL_list } from '../../Helper functions/utils'
import UpdateTripForm from './UpdateTripForm'
import DeleteTripCheck from './DeleteTripCheck'
import { useHistory } from 'react-router-dom'
import TopBanner from '../../TopBanner'

const TripDetails = ({trip}) => {

    const [imageModalShow, setImageModalShow] = useState(false);
    const [updateFormModalShow, setUpdateFormModalShow] = useState(false);
    const [deleteTripModalShow, setDeleteTripModalShow] = useState(false);

    const history = useHistory();

    let handleSuccessfulDelete = () => {
        history.push("/my-custom-trips")
    }

    //DisplayParagraph
    const alternateSides = false;
    const noImage = true;
    const about_bool = false;
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
    
    //build list of aws links for pictures
    const img_url_list = build_img_URL_list(trip.highlight_img_url, trip.images)

    //Default images list
    const default_img = [guatemala_sunrise];

    let img_list;

    {trip.user !== null 
        ? img_list = default_img 
        : img_list = img_url_list
    }

    return(
    <>
        <TopBanner 
            // image={trip.highlight_img_url}
            image={img_list[0]}
            position={"50% 45%"}
            text={trip.name}/>
    
        <div className="container">
            <div className="trip-details-content">
                <div className="column">
                    <h1><b>{trip.name}</b></h1>
                    <h4>{trip.location}</h4>
                    <br />
                    <p>{trip.description}</p>

                    <div className="itineraryDiv">
                        <h3><b>Itinerary</b></h3>
                        <DisplayParagraphAndImage obj_list={trip.itineraries} idField={id} titleField={title} 
                            pgraphField={pgraph} imageField={image} alternate_sides={alternateSides} no_image={noImage} about_bool={about_bool}/> 
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

                            <Button variant="outline-primary" className="trip-details-button" size="md" >Book This Trip</Button> 
                            
                            {trip.user !== null &&
                            <>
                                <Button variant="outline-secondary" className="trip-details-button" onClick={()=>setUpdateFormModalShow(true)} >Update trip</Button>                       
                                <Button variant="outline-danger" className="trip-details-button" onClick={()=>setDeleteTripModalShow(true)} >Delete trip</Button>
                            </>
                            }
                        </div>
                        
                        <ModalFunc
                            show={imageModalShow}
                            onHide={() => setImageModalShow(false)} 
                            content={<ImageGallery slides={img_list} />}
                            styles_header={{height: "20px", minWidth: "75%"}}
                            modal_width_class="image-gallery-modal-width"
                            styles_body={{height: "650px"}}
                        />
                        <div className="trip-details-carousel-container" style={carousel_css} onClick={() => setImageModalShow(true)}>
                            <CarouselFade 
                                carousel_items={img_list}
                                controls_bool={controls_bool} 
                                caption_bool={caption_bool}
                                indicator_bool={indicator_bool}
                            />     
                            <div className="overlay-carousel">
                                <h3><b>SEE ALL PHOTOS</b></h3>
                            </div>         
                        </div>

                        {trip.user !== null &&
                        <>
                            <ModalFunc
                            show={updateFormModalShow}
                            onHide={() => setUpdateFormModalShow(false)} 
                            content= {<UpdateTripForm trip={trip} setUpdateFormModalShow={setUpdateFormModalShow} />}
                            styles_header={{height: "20px"}}
                            modal_width_class="update-trip-modal-width"
                            // styles_body={{height: "200px"}}
                            />

                            <ModalFunc
                            show={deleteTripModalShow}
                            onHide={() => setDeleteTripModalShow(false)} 
                            content= {<DeleteTripCheck trip_id={trip.id} handleSuccessfulDelete={handleSuccessfulDelete} setDeleteTripModalShow={setDeleteTripModalShow} />}
                            styles_header={{height: "20px"}}
                            // styles_body={{height: "200px"}}
                            />
                        </> 
                        }
                                
                    </div>
                </div>           
            </div>
        </div>   
    </>
    );
}
 
export default TripDetails;

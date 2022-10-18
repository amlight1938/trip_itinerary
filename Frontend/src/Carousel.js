import { useState } from "react";
import { Link } from "react-router-dom";
import biking from './Assets/biking.jpg';
import colorado from './Assets/colorado.jpg';
import puerto_rico from './Assets/puerto_rico.jpg';

const Carousel = () => {
    const [carousel_items, setCarousel] = useState([
        {id: 1, class: 'carousel-item active', image: puerto_rico, caption: 'Adventure is out there!', subcaption: 'Explore new activities that will get your heart racing'},
        {id: 2, class: 'carousel-item',image: colorado, caption: 'See what the world has to offer', subcaption: 'Build lasting memories with family and friends'},
        {id: 3, class: 'carousel-item',image: biking, caption: 'Find your dream destination', subcaption: 'You\'ll never know whats out there until you see it for yourself' }
    ])


    return (
        <div id="carouselExampleIndicators" className="carousel slide" data-bs-ride="carousel">
            <div className="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" className="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>

            <div className="carousel-inner">
              {carousel_items.map((carousel_item) => (

                <div className={carousel_item.class} data-bs-interval="3500" key={carousel_item.id}>
                    <img className='carousel_image' src={carousel_item.image} alt=''></img>
                    <div className="carousel-caption">
                        <h1>{carousel_item.caption}</h1>
                        <h4>{carousel_item.subcaption}</h4>
                        <Link to="/destinations" className="btn btn-primary">See Destinations</Link>
                    </div>
                </div>

              ))};
            </div>

            <button className="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                <span className="carousel-control-prev-icon" aria-hidden="true"></span>
                <span className="visually-hidden">Previous</span>
            </button>
            <button className="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                <span className="carousel-control-next-icon" aria-hidden="true"></span>
                <span className="visually-hidden">Next</span>
            </button>
        </div>
    );    
}
 
export default Carousel;

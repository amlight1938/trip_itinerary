import { useState } from "react";
import CarouselFade from "./CarouselFade";

import biking from './Assets/biking.jpg';
import colorado from './Assets/colorado.jpg';
import puerto_rico from './Assets/puerto_rico.jpg';
import longs_peak from './Assets/longs_peak.jpg'

const HomeCarousel = () => {
    const [carousel_items, setCarousel] = useState([
        {id: 1, image: puerto_rico, caption: 'Adventure is out there!', subcaption: 'Explore new activities that will get your heart racing'},
        {id: 2, image: colorado, caption: 'See what the world has to offer', subcaption: 'Build lasting memories with family and friends'},
        {id: 3, image: biking, caption: 'Find your dream destination', subcaption: 'You\'ll never know whats out there until you see it for yourself' },
        {id: 4, image: longs_peak, caption: 'See what you\'re made of', subcaption: 'Experience thrills like never before' }
    ])

    const carousel_css = {
        height: "600px",
        width: "100%",
    }

    return (
        <div className="home-carousel-container" style={carousel_css}>
            <CarouselFade 
                carousel_items={carousel_items} 
                controls_bool={true} 
                caption_bool={true}
                indicator_bool={true}
            />  
        </div>
    );    
}
 
export default HomeCarousel;

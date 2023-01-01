import Carousel from 'react-bootstrap/Carousel';

import new_york from './Assets/new_york.jpg'
import colorado from './Assets/colorado.jpg'
import longs_peak from './Assets/longs_peak.jpg'
import { NavItem } from 'react-bootstrap';

function CarouselFadeExample({carousel_items, controls_bool, caption_bool, indicator_bool }) {
  
  return (
    <>
    <div className="carousel-pic-container">

      <Carousel controls={controls_bool} indicators={indicator_bool} fade>
      
        {carousel_items.map((item) => {
          return(
            <Carousel.Item interval={3000}>
              <img
                className="carousel-pic"
                src={item.image}
                alt="First slide"
              />
              {caption_bool 
                &&  <Carousel.Caption>
                      <h3>{item.caption}</h3>
                      <p>{item.subcaption}</p>
                    </Carousel.Caption>               
              }
              
            </Carousel.Item>
          )})};
          
      </Carousel>
      

    </div>
    </>
  );
}

export default CarouselFadeExample;
import Carousel from 'react-bootstrap/Carousel';
import { Button } from 'react-bootstrap';
import { Link } from 'react-router-dom';

function CarouselFade({carousel_items, controls_bool, caption_bool, indicator_bool}) {
  
  return (
      <Carousel controls={controls_bool} indicators={indicator_bool} fade style={{height: "100%", width: "100%"}}>
      
        {carousel_items.map((item, index) => {
          let image;
          {item.image === undefined ? image = item : image = item.image}
          return(
            <Carousel.Item interval={3000} key={index} style={{
              height: "100%",
              width: "100%",
              backgroundImage: `url('${image}')`,
              backgroundSize: "cover",
              backgroundRepeat: "no-repeat",
              backgroundPosition: "50% 45%"
            }}>
         
              {caption_bool 
                &&  <Carousel.Caption>
                      <h2>{item.caption}</h2>
                      <h5>{item.subcaption}</h5>
                      <Link to="/destinations">
                        <Button variant="primary" style={{opacity: ".8", textAlign: "center"}}>See destinations</Button>
                      </Link>
                    </Carousel.Caption>               
              }
              
            </Carousel.Item>
          )})};
      </Carousel>
  );
}

export default CarouselFade;
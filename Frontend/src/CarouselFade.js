import Carousel from 'react-bootstrap/Carousel';

function CarouselFade({carousel_items, controls_bool, caption_bool, indicator_bool}) {
  
  return (
      <Carousel controls={controls_bool} indicators={indicator_bool} fade style={{height: "100%", width: "100%"}}>
      
        {carousel_items.map((item) => {
          return(
            <Carousel.Item interval={3000} style={{
              height: "100%",
              width: "100%",
              backgroundImage: `url('${item.image}')`,
              backgroundSize: "cover",
              backgroundRepeat: "no-repeat",
              backgroundPosition: "50% 45%"
            }}>
         
              {caption_bool 
                &&  <Carousel.Caption>
                      <h2>{item.caption}</h2>
                      <h5>{item.subcaption}</h5>
                    </Carousel.Caption>               
              }
              
            </Carousel.Item>
          )})};
      </Carousel>
  );
}

export default CarouselFade;
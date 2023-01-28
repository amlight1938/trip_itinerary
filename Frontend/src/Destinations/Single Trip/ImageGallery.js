import { useState } from "react";

const ImageGallery = ({slides}) => {
    const sl = slides.length;
    const lastIndex = sl - 1;

    const [currentIndex, setCurrentIndex] = useState(0);

    const goToPrevious = () => {
        let isFirstSlide = currentIndex === 0;
        let newIndex = isFirstSlide ? lastIndex : currentIndex - 1; 
        setCurrentIndex(newIndex);
    };

    const goToNext = () => {
        let isLastSlide = currentIndex === lastIndex;
        let newIndex = isLastSlide ? 0 : currentIndex + 1;
        setCurrentIndex(newIndex);
    };

    const goToSlide = (slideIndex) => {
        if(slideIndex >= 0 && slideIndex <= lastIndex){
            setCurrentIndex(slideIndex);
        }   
    };

    const containerStyles = {
        height: "100%",
        width: "90%",
        position: "absolute"
    };

    const bigImageAreaStyles = {
        height: "75%",
        position: "relative",

        display: "flex",
        justifyContent: "center",
        alignItems: "center",
        paddingBottom: "3px",

        overflow: "hidden"

    }

    const bigImageStyles = {
        // height: "98%",
        // width: "auto",
        maxHeight: "98%",
        maxWidth: "95%"
    }

    const carouselDivStyles = {
        height: "25%",
        position: "absolute",
        bottom: 4,
        width: "100%",
        border: "4px solid black",

        display: "flex",
        justifyContent: "center",
        alignItems: "center",

    }

    const rowStyles = {
        width: "98%",
        height: "100%",
        backgroundColor: "rgb(0,0,0,.5)",

        display: "flex",
        justifyContent: "center",
        alignItems: "center",

        overflow: "hidden"
    }

    const smallImageStyles ={
        height: "90%",
        width: "auto",
        cursor: "pointer"
    }

    const rightArrowStyles = {
        position: "absolute",
        top: "50%",
        transform: "translate(0, -50%)",
        right: "10px",
        fontSize: "45px",
        color: "white",
        zIndex: 1,
        cursor: "pointer",
    };
    
    const leftArrowStyles = {
        position: "absolute",
        top: "50%",
        transform: "translate(0, -50%)",
        left: "10px",
        fontSize: "45px",
        color: "white",
        zIndex: 1,
        cursor: "pointer",
    };

    return (      
        <div style={containerStyles}>
            <div className="bigImage" style={bigImageAreaStyles}>
                <img src={slides[currentIndex]} alt="" style={bigImageStyles} />
            </div>

            <div className="slider-carousel" style={carouselDivStyles}>
                <div onClick={goToPrevious} style={leftArrowStyles} >❰</div>
                <div onClick={goToNext} style={rightArrowStyles}>❱</div>

                <div className="picture-row" onClick={() => goToSlide(currentIndex - 1)} style={rowStyles}>
                    <img src={slides[currentIndex - 1]} alt="" style={smallImageStyles} />
                </div>
                <div className="picture-row" onClick={() => goToSlide(currentIndex)} style={rowStyles}>
                    <img src={slides[currentIndex ]} alt="" style={smallImageStyles} />
                </div>
                <div className="picture-row" onClick={() => goToSlide(currentIndex + 1)} style={rowStyles}>
                    <img src={slides[currentIndex + 1 ]} alt="" style={smallImageStyles} />
                </div>
                <div className="picture-row" onClick={() => goToSlide(currentIndex + 2)} style={rowStyles}>
                    <img src={slides[currentIndex + 2 ]} alt="" style={smallImageStyles} />
                </div>
            </div>
        </div>
    );
}
 
export default ImageGallery;
import { useState } from "react";
import { alignPropType } from "react-bootstrap/esm/types";

export const ImageSlider = ({ slides }) => {
    const slideStyles = {
    width: "100%",
    height: "100%",
    borderRadius: "10px",
    backgroundSize: "contain",
    backgroundPosition: "center",
    backgroundColor: "black",
    backgroundRepeat: "no-repeat",    
    };

    const rightArrowStyles = {
    position: "absolute",
    top: "50%",
    transform: "translate(0, -50%)",
    right: "32px",
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

    const sliderStyles = {
    position: "relative",
    height: "auto",
    };

    const dotsContainerStyles = {
    display: "flex",
    justifyContent: "center",
    };

    const dotStyle = {
    margin: "0 3px",
    cursor: "pointer",
    fontSize: "20px",
    };

    const colStyles = {
        positon: "relative",
        height:"200px",
        // width: "400px",
        margin: "auto",
        display: "block",
        columnWidth: "300px",
        overflow: "hidden"
    }
    const imgStyles = {
        height:"100%",
        width: "auto",
        margin: "auto",
        // display: "block",
        overflow: "hidden",
        // columnWidth:"300px",
        // top: 0,
        // bottom: 0,
        // left: 0,
        // right: 0,
        // position: "absolute"
    }

    const imgRowStyles ={
        // columnWidth: "auto",
        height:"200px",
        margin: "auto",
        
    }


    const [currentIndex, setCurrentIndex] = useState(0);
    const goToPrevious = () => {
        const isFirstSlide = currentIndex === 0;
        const newIndex = isFirstSlide ? slides.length - 1 : currentIndex - 1;
        setCurrentIndex(newIndex);
    };
    const goToNext = () => {
        const isLastSlide = currentIndex === slides.length - 1;
        const newIndex = isLastSlide ? 0 : currentIndex + 1;
        setCurrentIndex(newIndex);
    };
    const goToSlide = (slideIndex) => {
        setCurrentIndex(slideIndex);
    };
    const slideStylesWidthBackground = {
        ...slideStyles,
        // backgroundImage: `url(${slides[currentIndex]})`,

    };

    return (
        <>
        <div>
            {/* <img src={slides[currentIndex]} alt="" className="img-fluid" /> */}
        </div>


        <div style={sliderStyles}>
        <div>
            <div onClick={goToPrevious} style={leftArrowStyles}>
            ❰
            </div>
            <div onClick={goToNext} style={rightArrowStyles}>
            ❱
            </div>
        </div>
        <div className="imageSlider-item" style={slideStylesWidthBackground}>
            <div className="row" style={imgRowStyles}>
                <div className="col" style={colStyles}>
                    <img src={slides[currentIndex-2 ]} alt="" className="img-fluid" style={imgStyles}/>
                </div>
                <div className="col" style={colStyles}>
                    <img src={slides[currentIndex-1 ]} alt="" className="img-fluid" style={imgStyles}/>
                </div>
                <div className="col" style={colStyles}>
                    <img src={slides[currentIndex]} alt="" className="img-fluid" style={imgStyles}/>
                </div>
                <div className="col" style={colStyles}>
                    <img src={slides[currentIndex+1]} alt="" className="img-fluid" style={imgStyles}/>
                </div>
                <div className="col" style={colStyles}>
                    <img src={slides[currentIndex+2]} alt="" className="img-fluid" style={imgStyles}/>
                </div>
            </div>
        </div>
        {/* <div style={dotsContainerStyles}>
            {slides.map((slide, slideIndex) => (
            <div
                style={dotStyle}
                key={slideIndex}
                onClick={() => goToSlide(slideIndex)}
            >
                ●
            </div>
            ))}
        </div> */}
        
        </div>
        </>
    );
};

export default ImageSlider;
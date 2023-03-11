import bike_road_1 from './Assets/bike_road_1.jpg'
import topo_dark from './Assets/topo_dark.jpg'
import { Link } from 'react-router-dom'

const BottomBanner = () => {

    const whole_div_styles ={
        position: "relative",
    }

    const img_styles = {
        height: "650px",
        backgroundImage: `url('${bike_road_1}')`,
        backgroundSize: "cover",
        backgroundPosition: "50% 60%",
        position: "relative",
        top: "-300px",
        zIndex: "-1",
    }

    const strip_styles = {
        backgroundColor: "#252b39", //"#1c202a",
        width: "100%",
        color: "white",
        position: "absolute",
        bottom: "0",
        color: "white"
    }         

    const topo_styles = {
        position: "absolute",
        height: "100%",
        width: "100%",
        backgroundImage: `url('${topo_dark}')`,
        backgroundSize: "contain",
        opacity: ".2",
        zIndex: "1",
        border: "0"
    }

    const banner_link_styles ={
        color: "white"
    }

    return ( 
        <div className="bottom-banner-whole" style={whole_div_styles}>
            <div className="bottom-banner-background" style={img_styles}></div>
            <div className="bottom-banner-strip" style={strip_styles}>
                <div style={topo_styles}></div>
                <div className="bottom-banner-writing-strip" >
                    <div className="banner-text-section" style={{flex: ".7"}}>
                        <p><b>ABOUT THE AUTHOR</b></p>
                        <p>
                            I am a self-taught software engineer with a background in Aerospace Engineering from The University of Texas at Austin. I have been a fulltime engineer since 8/2021. My skills include React, Ruby on Rails, Python, Java, C, C#, SQL, HTML/CSS, Matlab, and OOP.
                        </p>
                        <div className="profile_link_styles">   
                            <a href="https://www.linkedin.com/in/aaronmlight/" style={{color: "white"}}><p>LinkedIn</p></a>
                            <a href="https://github.com/amlight1938/trip_itinerary" style={{color: "white"}}><p>GitHub</p></a>
                        </div>
                        
                    </div>
                    <div className="banner-text-section" style={{flex: ".3"}}>
                        <p><b>QUICK LINKS</b></p>
                        <Link style={banner_link_styles} to="/"><p>Home</p></Link>
                        <Link style={banner_link_styles} to="/about"><p>About</p></Link>
                        <Link style={banner_link_styles} to="/destinations"><p>Destinations</p></Link>
                        <Link style={banner_link_styles} to="/my-custom-trips"><p>Custom Trips</p></Link>
                    </div>
                </div>
            </div>
        </div>   
    );
}
 
export default BottomBanner;
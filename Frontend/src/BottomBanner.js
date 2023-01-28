import bike_road_1 from './Assets/bike_road_1.jpg'
import lake from './Assets/lake.jpg'

const BottomBanner = () => {
    const banner_img_styles = {
        height: "650px",
        // width: "400px", 
        backgroundImage: `url('${bike_road_1}')`,
        backgroundSize: "cover",
        // border: "0px",
        // backgroundColor: "blue"
        backgroundPosition: "50% 60%",
        
    }

    return (<>
        {/* <br />
        <br />
        <br />
        <br /> */}
        <div className="bottom-banner-background" style={banner_img_styles}></div>
        </>
    );
}
 
export default BottomBanner;
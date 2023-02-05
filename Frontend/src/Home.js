import HomeCarousel from "./HomeCarousel";
import FlightTakeoffIcon from '@mui/icons-material/FlightTakeoff';
import FlightLandIcon from '@mui/icons-material/FlightLand';
import DirectionsBikeIcon from '@mui/icons-material/DirectionsBike';
import DirectionsRunIcon from '@mui/icons-material/DirectionsRun';
import SnowmobileIcon from '@mui/icons-material/Snowmobile';
import KayakingIcon from '@mui/icons-material/Kayaking';
import HikingIcon from '@mui/icons-material/Hiking';

const Home = (props) => {
    return (
        <>
        <HomeCarousel />
        <div className="color_strip">
            <FlightTakeoffIcon className="svg_icon"/>
            <DirectionsBikeIcon className="svg_icon"/>
            <DirectionsRunIcon className="svg_icon"/>
            <SnowmobileIcon className="svg_icon"/>
            <HikingIcon className="svg_icon"/>
            <KayakingIcon className="svg_icon"/>
            <FlightLandIcon className="svg_icon"/>
        </div>

        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>

        </>
        
    );
}
 
export default Home;
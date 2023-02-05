import HomeCarousel from "./HomeCarousel";
import FlightTakeoffIcon from '@mui/icons-material/FlightTakeoff';
import FlightLandIcon from '@mui/icons-material/FlightLand';
import DirectionsBikeIcon from '@mui/icons-material/DirectionsBike';
import DirectionsRunIcon from '@mui/icons-material/DirectionsRun';
import SnowmobileIcon from '@mui/icons-material/Snowmobile';
import KayakingIcon from '@mui/icons-material/Kayaking';
import HikingIcon from '@mui/icons-material/Hiking';
import TripCard from "./Destinations/TripCard";

import mountain_view from './Assets/mountain_view.jpg'
import Alaska_sign from './Assets/Alaska_sign.jpg'
import rappel_1 from './Assets/rappel_1.jpg'
import peak from './Assets/peak.jpg'

const Home = (props) => {

    // const [featured_trips, setCarousel] = useState([
    const featured_trips = ([
        {id: 8, image: mountain_view, name: 'Pacific Northwest Roadtrip', description: 'Explore Olympic National Park\'s backcountry, Seattle, and Ruby Beach. Enjoy breathtaking views as you go skydiving over Olympic National Park'},
        {id: 2, image: Alaska_sign, name: 'Bike from Texas to Alaska', description: 'Ride a bicycle 4,000 miles over 70 days from Austin, TX to Anchorage, AK. See North America from a new perspective and spend nights in host homes or camping in the wilderness'},
        {id: 6, image: rappel_1, name: 'Rock Climbing Overnight', description: 'Camp in remote territory and conquer your fear of heights while climbing towering cliffs for two days'},
        {id: 7, image: peak, name: 'Climb a 14er', description: 'Camp at the base of Mt. Democrat and hike 2,000ft to the summit in the early morning'},
    ])

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
        
        <br />
        <h2 style={{textAlign: "center"}}>Featured Trips</h2>

        <div className="container">
            <div className="featured_trips">
                {featured_trips.map((trip) => {
                    return(
                        <div key={trip.id}>
                            <TripCard trip={trip} />
                        </div>
                    )
                })}
            </div>
        </div>

        </> 
    );
}
 
export default Home;
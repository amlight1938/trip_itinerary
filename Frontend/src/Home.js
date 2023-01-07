import HomeCarousel from "./HomeCarousel";
import Registration from "./Registration";

const Home = () => {
    return (
        <>
        <HomeCarousel />
        <div className="container" style={{margin: "20px"}}>
            <Registration />
        </div>
        
        </>
        
    );
}
 
export default Home;
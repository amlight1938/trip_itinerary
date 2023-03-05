import night_tent from './Assets/night_tent.jpg'
import { Link } from 'react-router-dom';
import { Button } from 'react-bootstrap';

const NotFound = () => {
    const pic_styles = {
        backgroundImage: `url('${night_tent}')`,
        backgroundSize: 'cover',
        backgroundPosition: "50% 67%",
        height: "100vh",
        display: "flex",
        justifyContent: "center",
        alignItems: "center"
    }

    return (
        <div style={pic_styles}>
            <div>
                <h1 style={{color: "white", textAlign: "Center"}}>404 Not Found :(</h1>
                <Link to='/'>
                    <Button variant="primary">Go Home</Button>
                </Link>
            </div>
        </div>
    );
}
 
export default NotFound;
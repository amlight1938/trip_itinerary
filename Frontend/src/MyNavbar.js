import Button from 'react-bootstrap/Button';
import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';
import { Link } from 'react-router-dom';

function MyNavbar(props) {
  const user = props.session.user;
  const isLoggedIn = props.session.isLoggedIn;

  return (
    <Navbar bg="white" expand="sm">
      <Container fluid>
        <Navbar.Toggle aria-controls="navbarScroll" />
        <Navbar.Collapse id="navbarScroll" style={{display:"flex"}}>
            <Nav
                className="mx-0 my-2 my-lg-0"
                style={{ maxHeight: '100px', flex: ".7"}}
                navbarScroll
            >
                <Nav.Link className="px-4 text-dark" href="/"><b>HOME</b></Nav.Link>
                <Nav.Link className="px-4 text-dark" href="/about"><b>ABOUT</b></Nav.Link>
                <Nav.Link className="px-4 text-dark" href="/destinations"><b>DESTINATIONS</b></Nav.Link>
                <Nav.Link className="px-4 text-dark" href="/my-custom-trips"><b>CUSTOM TRIPS</b></Nav.Link>
            </Nav>

            <div className="login-status-div">
                {isLoggedIn
                  ? <>
                      <p className="login-status-text">{"Hello, " + user.username }</p>
                      <Button variant="outline-primary" onClick={() => props.handleLogout()}>Logout</Button>
                    </>
                  : <>
                      <p className="login-status-text">{"No user signed in" }</p>
                      <Link to="/my-custom-trips">
                        <Button variant="outline-primary">Login</Button>
                      </Link>                    
                    </> 
                }
            </div>
        </Navbar.Collapse>
      </Container>
    </Navbar>
  );
}

export default MyNavbar;
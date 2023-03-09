const Paragraph = ({title, pgraph, image, img_left_bool, about_bool}) => {
    
    return (
        <div className="paragraph_and_picture" style={{ textAlign: img_left_bool ? "right" : "left"}}>
            {!image
                ?   <>
                        <h5>{title}</h5>
                        <p>{pgraph}</p>
                    </>
                
                :    !img_left_bool 
                        ?   <div className="para_grid_img_right">
                                <div>
                                    <h5>{title}</h5>
                                    <p>{pgraph}</p>
                                    {about_bool && 
                                    <>
                                        <p><b>Features of this website</b></p>
                                        <ul>
                                            <li>React JS frontend communicates with Ruby on Rails backend API</li>
                                            <li>RESTful web application utilizes CRUD (create, read, update, destroy) operations between frontend and backend API</li>
                                            <li>Implements SQL on relational database with associations between users, trips, activities, itineraries, and images</li>
                                            <li>Users can securely create accounts, login, and create, update, or delete custom trips using Bcrypt (password salting and hashing library)</li>
                                            <li>Integrates Amazon Web Services for photo storage and CI/CD pipelines</li>
                                            <li>Ability to search by name, location, activity, date, or description</li>
                                            <li>CSS accomodates both computer and smartphone screens</li>
                                        </ul>
                                    </>
                                    }
                                </div>
                                <div style={{marginLeft: "auto"}}>
                                    <img className="paragraph_image" style={{marginLeft: "auto"}} src={image} alt="" />
                                </div>
                            </div>

                        :   <div className="para_grid_img_left">
                                <div style={{marginRight: "auto"}}>
                                    <img className="paragraph_image" src={image} alt="" />
                                </div>
                                <div>
                                    <h5>{title}</h5>
                                    <p>{pgraph}</p>
                                    {about_bool && 
                                        <div className="profile_link_styles">   
                                            <a href="https://www.linkedin.com/in/aaronmlight/" style={{color: "black"}}><p><b>LinkedIn</b></p></a>
                                            <a href="https://github.com/amlight1938/trip_itinerary" style={{color: "black"}}><p><b>GitHub</b></p></a>
                                        </div>
                                    }
                                </div>                        
                            </div>        
            }  
        </div>
    );
}
 
export default Paragraph;
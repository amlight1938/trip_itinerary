import DisplayParagraphAndImage from "./Paragraph and image section/DisplayParagraphAndImage"
import italy_hike from "./Assets/italy_hike.jpg"
import canyon_2 from "./Assets/canyon_2.jpg"
import TopBanner from "./TopBanner";


const About = () => {
    const about_items = [
        {
            id: 1, 
            title: "About This Website", 
            pgraph: "Taking the form of a professional tour guide company's website, this project is a digital journal of vacations, day trips, or adventurous activities that I have done in the past. Every trip, sample itinerary, and photo is from my own past experiences. Hopefully this journal will inspire future adventures for its users!", 
            image: italy_hike
        },
        {
            id: 2, title: "About The Author", 
            pgraph: "I a am self-taught software engineer with a background in Aerospace Engineering from The University of Texas at Austin. I have been a fulltime engineer at Northrop Grumman since 8/2021. My skills include React, Ruby on Rails, Python, Java, C, C#, SQL, HTML/CSS, Matlab, and Object-Oriented Programming.", 
            image: italy_hike
        }
    ]

    const alternateSides = true;
    const noImage = false;
    const about_bool = true;
    const id = "id"
    const title = "title"
    const pgraph = "pgraph"
    const image = "image"

    
    return(
        <>
            <TopBanner 
                image={canyon_2} 
                position={"40% 55%"}
                text={"ABOUT"}/>

            <div className="container">
                <DisplayParagraphAndImage obj_list={about_items} idField={id} titleField={title} 
                    pgraphField={pgraph} imageField={image} alternate_sides={alternateSides} no_image={noImage} about_bool={about_bool}/> 
            </div>
        </>


        
    );
}
 
export default About;
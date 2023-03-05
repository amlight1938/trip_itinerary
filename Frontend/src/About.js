import DisplayParagraphAndImage from "./Paragraph and image section/DisplayParagraphAndImage"
import utah from "./Assets/utah.jpg"
import portrait from "./Assets/portrait.jpg"
import volcano_2 from "./Assets/volcano_2.jpg"
import TopBanner from "./TopBanner";


const About = () => {
    const about_items = [
        {
            id: 1, 
            title: "About This Website", 
            pgraph: "Taking the form of a professional tour guide company's website, this project is a digital journal of vacations, day trips, or adventurous activities that I have done in the past. Every trip, sample itinerary, and photo is from my own past experiences. Hopefully this journal will inspire future adventures for its users!", 
            image: utah
        },
        {
            id: 2, title: "About The Author", 
            pgraph: "I am a self-taught software engineer with a background in Aerospace Engineering from The University of Texas at Austin. I have been a fulltime engineer at Northrop Grumman since 8/2021. My skills include React, Ruby on Rails, Python, Java, C, C#, SQL, HTML/CSS, Matlab, and Object-Oriented Programming.", 
            image: portrait
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
                image={volcano_2} 
                position={"40% 62%"}
                text={"ABOUT"}/>

            <div className="container">
                <DisplayParagraphAndImage obj_list={about_items} idField={id} titleField={title} 
                    pgraphField={pgraph} imageField={image} alternate_sides={alternateSides} no_image={noImage} about_bool={about_bool}/> 
            </div>
        </>
    );
}
 
export default About;
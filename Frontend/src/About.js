import DisplayParagraphAndImage from "./Paragraph and image section/DisplayParagraphAndImage"
import italy_hike from "./Assets/italy_hike.jpg"
import canyon_2 from "./Assets/canyon_2.jpg"
import TopBanner from "./TopBanner";


const About = () => {
    const about_items = [
        {id: 1, title: "About This Website", pgraph: "A paragraph about this website", image: italy_hike},
        {id: 2, title: "About The Author", pgraph: "A paragraph about the author", image: italy_hike}
    ]

    const alternateSides = true;
    const noImage = false;
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
                    pgraphField={pgraph} imageField={image} alternate_sides={alternateSides} no_image={noImage}/> 
            </div>
        </>


        
    );
}
 
export default About;
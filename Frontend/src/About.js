import Paragraph from "./Paragraph";
import italy_hike from "./Assets/italy_hike.jpg"

const About = () => {
    const about_items = [
        {id: 1, title: "About This Website", pgraph: "A paragraph about this website", image: italy_hike},
        {id: 2, title: "About The Author", pgraph: "A paragraph about the author", image: italy_hike}
    ]

    let iteration_count = 0;
    let left_pic = null;

    return (     
        <div className="container">

            {about_items.map((item) => {
                iteration_count % 2 !== 0 ? left_pic = true : left_pic = false;
                iteration_count++;
                return(
                    <div key={item.id}>
                        <Paragraph 
                            title={item.title}
                            pgraph={item.pgraph} 
                            image={item.image} 
                            img_left_bool={left_pic}
                        />
                    </div>
                )               
            })}

        </div> 
    );
}
 
export default About;
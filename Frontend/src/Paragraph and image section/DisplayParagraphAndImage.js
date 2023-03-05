import Paragraph from "./Paragraph";

//takes as input a list of objects and those objects' field names in strings ("fields"), 
//and bools for alteranting picture sides and showing an image or not
const DisplayParagraphAndImage = ({obj_list, idField, titleField, pgraphField, imageField, alternate_sides, no_Image, about_bool}) => {
    
    let iteration_count = 0;

    let image = null;

    let left_pic;
    if(alternate_sides){
        left_pic = null;
    }else{
        left_pic = false;
    }
    
    return ( 
        <>    
            {obj_list.map((obj) => {
                if(alternate_sides){
                    iteration_count % 2 !== 0 ? left_pic = true : left_pic = false;
                    iteration_count++;
                }

                if(!no_Image){
                    image = obj[imageField];
                }
                
                return(
                    <div key={obj[idField]}>
                        <Paragraph 
                            title={obj[titleField]}
                            pgraph={obj[pgraphField]} 
                            image={image} 
                            img_left_bool={left_pic}
                            about_bool={about_bool}
                        />
                    </div>
                )               
            })}
        </>
    );
}
 
export default DisplayParagraphAndImage;
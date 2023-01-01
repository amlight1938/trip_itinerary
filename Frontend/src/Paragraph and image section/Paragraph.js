const Paragraph = ({title, pgraph, image, img_left_bool}) => {
    
    return (
        <div className="paragraph_and_picture" style={{ textAlign: img_left_bool ? "right" : "left"}}>
            {!image
                ?   <>
                        <h5>{title}</h5>
                        <p>{pgraph}</p>
                    </>
                
                :    !img_left_bool 
                        ?   <div className="row">
                                <div className="col-6">
                                    <h5>{title}</h5>
                                    <p>{pgraph}</p>
                                </div>
                                <div className="col-4">
                                        <img className="paragraph_image" src={image} alt="" />
                                </div>
                            </div>

                        :   <div className="row">
                                <div className="col-4">
                                    <img className="paragraph_image" src={image} alt="" />
                                </div>
                                <div className="col-6">
                                    <h5>{title}</h5>
                                    <p>{pgraph}</p>
                                </div>                        
                            </div>
                    
            }
           
        </div>
    );
}
 
export default Paragraph;
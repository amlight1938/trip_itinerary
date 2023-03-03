// function to construct array of activities from API object
export function build_activity_list(activities_obj_list){
    let activities_list = [];

    activities_obj_list.map(activity_obj => {
        activities_list.push(activity_obj.trip_activity)
    });

    return activities_list;
};

// function to construct array of image links from API object
export function build_img_URL_list(highlight_img_url, img_obj_list){
    let img_URL_list = [];

    img_URL_list.push(highlight_img_url); //adding highlight image to first spot on img list

    img_obj_list.map(img_obj => {
        img_URL_list.push(img_obj.image_url)
    });

    return img_URL_list;
};

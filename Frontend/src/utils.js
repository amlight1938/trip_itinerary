// export function getActivity(trip_id, activities){
//     let trip_activity_list = [];

//     activities.map(activity_obj => {
//         if (activity_obj.relationships.trip.data.id === trip_id){
//             trip_activity_list.push(activity_obj.attributes.trip_activity)
//         }
//     });

//     return trip_activity_list;
// };


export function buildActivityString(activities_obj_list){
    let activities_list = [];

    activities_obj_list.map(activity_obj => {
        activities_list.push(activity_obj.trip_activity)
    });

    return activities_list.join(', ');
};

class Trip extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            name:"",
            location:"",
            date: Date(),   
            description: "",
            highlight_photo_link: "",   //string photo link for main picture
            photo_links: [],    //array of photo link strings
            itinerary_by_day: []    //array of strings each entry is one day
        }
    }
}

export default Trip;
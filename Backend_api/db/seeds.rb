# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Activity.destroy_all
Trip.destroy_all

trips = Trip.create([
    {
        name: "West Texas Roadtrip",
        location: "Big Bend National Park",
        date: Date.new(2017, 3, 4),
        description: "Go on a roadtrip in western Texas to go backpacking in Big Bend, climb the highet point in Texas, and surf down sand dunes"
    },
    {
        name: "Buffalo River Backpacking",
        location: "Buffalo River, Arkansas",
        date: Date.new(2018, 3, 14),
        description: "Spend a few nights exploring the Arkansas backcountry"       
    },
    {
        name: "Hawaii Multisport",
        location: "Big Island of Hawaii",
        date: Date.new(2021, 6, 14),
        description: "See Volcano National Park, black sand beaches, and explore the less traveled areas of Hawaii's Big Island by bike, foot, and kayak."
    },
    {
        name: "Boundary Water Canoeing",
        location: "Minnesota Boundary Waters",
        date: Date.new(2016, 3, 20),
        description: "Travel 50 miles canoeing, portaging, and camping out under the stars in the Minnesota wilderness",        
    },
    {
        name: "Pacific Northwest Roadtrip",
        location: "Olympic National Park and Seattle",
        date: Date.new(2021, 7, 15),
        description: "Explore Olympic National Park's backcountry, Seattle, Ruby Beach. Enjoy breathtaking views as you go skydiving over Olympic National Park"
    },
    {
        name: "Puerto Rico Exploring",
        location: "Puerto Rico",
        date: Date.new(2022, 6, 27),
        description: "Check out El Yunque rainforest, Old San Juan, swim in bioluminescent water while stargazing, slide down natural waterslides, and eat some street mangos"
    },
    # {

    # },
])

activities = Activity.create([
    #West texas roadtrip
    {
        trip_activity: "Backpacking",
        trip: trips.first
    },
    {
        trip_activity: "Sand dune surfing",
        trip: trips.first
    },

    #Buffao river backoacking
    {
        trip_activity: "Backpacking",
        trip: trips.second
    },

    #Hawaii multisport
    {
        trip_activity: "Biking",
        trip: trips.third
    },
    {
        trip_activity: "Hiking",
        trip: trips.third
    },
    {
        trip_activity: "Kayaking",
        trip: trips.third
    },
    {
        trip_activity: "Snorkeling",
        trip: trips.third
    },

    #Boundary waters canoeing
    {
        trip_activity: "Canoeing",
        trip: trips.fourth
    },

    #Pacific northwest roadtrip
    {
        trip_activity: "Backpacking",
        trip: trips.fifth
    },
    {
        trip_activity: "Sky diving",
        trip: trips.fifth
    },
    {
        trip_activity: "kayaking",
        trip: trips.fifth
    },

    # #Puerto rico exploring
    # {
    #     trip_activity: "hiking",
    #     trip: trips
    # },
    # {
    #     trip_activity: "kayaking",
    #     trip: trips.
    # },
    # {
    #     trip_activity: "hiking",
    #     trip: trips.six
    # },

])

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
    }
])

activities = Activity.create([
    {
        trip_activity: "Backpacking",
        trip: trips.first
    },
    {
        trip_activity: "Backpacking",
        trip: trips.second
    }

])

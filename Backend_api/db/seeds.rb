# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Itinerary.destroy_all
Image.destroy_all
Activity.destroy_all
Trip.destroy_all

class Entry
    def initialize(pName, pLocation, pDate, pHighlightImageURL, pDescription, 
            pActivities, pImageURLs, pItinerary)
        
        trip = Trip.create(name: pName, location: pLocation, date: pDate, description: pDescription, 
            highlight_img_url: pHighlightImageURL)
       
        pActivities.each do |tmp_activity|
            activity = Activity.create(trip_activity: tmp_activity, trip_id: trip.id)
            trip.activities << activity
        end

        pImageURLs.each do |tmp_url|
            url = Image.create(image_url: tmp_url, trip_id: trip.id)
            trip.images << url
        end

        itinerary = Itinerary.create(itinerary_description: pItinerary, trip_id: trip.id)
    end
end

Entry.new("West Texas Roadtrip", 
    "Big Bend National Park", 
    Date.new(2017, 3, 4), 
    "highlight image .com",
    "Go on a roadtrip in western Texas to go backpacking in Big Bend, climb the highet point in Texas, and surf down sand dunes",
    ["Backpacking", "Camping"],
    ["test 1 image url .com", "test 2 image url .com"],
    "Day1: do something on day 1. Day 2: do something on day 2."
)

# Entry.new("Buffalo River Backpacking", 
#     "Buffalo River, Arkansas", 
#     Date.new(2018, 3, 14), 
#     "Spend a few nights exploring the Arkansas backcountry",
#     ["Backpacking"]
# )

# Entry.new("Hawaii Multisport",
#     "Big Island of Hawaii",
#     Date.new(2021, 6, 14),
#     "See Volcano National Park, black sand beaches, and explore the less traveled areas of Hawaii's Big Island by bike, foot, and kayak",
#     ["Biking", "Kayaking", "Hiking", "Snorkelling"]
# )

# Entry.new("Boundary Water Canoeing",
#     "Minnesota Boundary Waters",
#     Date.new(2016, 3, 20),
#     "Travel 50 miles canoeing, portaging, and camping out under the stars in the Minnesota wilderness",
#     ["Canoeing"]
# )

# Entry.new("Pacific Northwest Roadtrip",
#     "Olympic National Park and Seattle",
#     Date.new(2021, 7, 15),
#     "Explore Olympic National Park's backcountry, Seattle, and Ruby Beach. Enjoy breathtaking views as you go skydiving over Olympic National Park",
#     ["Skydiving", "Backpacking", "Kayaking"]
# )

# Entry.new("Puerto Rico Exploring",
#     "Puerto Rico",
#     Date.new(2022, 6, 27),
#     "Check out El Yunque rainforest, Old San Juan, swim in bioluminescent water while stargazing, slide down natural waterslides, and eat some street mangos",
#     ["Hiking", "Kayaking", "Ziplining", "Swimming"]
# )


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
    def initialize(pName:, pLocation:, pDate:, pHighlightImageURL:, pDescription:, 
            pActivities:, pImageURLs:, pItineraries:)
        
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

        pItineraries.each do |row|
            day = row[0]
            itin = row[1]
            itinerary = Itinerary.create(day_number: day, day_itinerary: itin, trip_id: trip.id)
            trip.itineraries << itinerary
        end

        #itinerary = Itinerary.create(itinerary_description: pItinerary, trip_id: trip.id)
    end
end

Entry.new(
    pName: "West Texas Roadtrip",
    pLocation: "Big Bend National Park",
    pDate: Date.new(2017, 3, 4),
    pHighlightImageURL: "highlight image .com",
    pDescription: "Go on a roadtrip in western Texas to go backpacking in Big Bend, climb the highet point in Texas, and surf down sand dunes",
    pActivities: ["Backpacking", "Camping", "Sand surfing"],
    pImageURLs: ["test 1 image url .com", "test 2 image url .com"],
    pItineraries: 
    [
        ["Day 1", "TX do something on day 1"],
        ["Day 2", "TX do something on day 2"]
    ]
)

Entry.new(
    pName: "Buffalo River Backpacking",
    pLocation: "Buffalo River, Arkansas",
    pDate: Date.new(2018, 3, 14),
    pHighlightImageURL: "AR highlight image .com",
    pDescription: "Spend a few nights exploring the Arkansas backcountry",
    pActivities: ["Backpacking"],
    pImageURLs: ["AR test 1 image url .com", "AR test 2 image url .com"],
    pItineraries: 
    [
        ["Day 1", "AR do something on day 1"],
        ["Day 2", "AR do something on day 2"]
    ]
)

Entry.new(
    pName: "Hawaii Multisport",
    pLocation: "Big Island of Hawaii",
    pDate: Date.new(2021, 6, 14),
    pHighlightImageURL: "HI highlight image .com",
    pDescription: "See Volcano National Park, black sand beaches, and explore the less traveled areas of Hawaii's Big Island by bike, foot, and kayak",
    pActivities: ["Biking", "Kayaking", "Hiking", "Snorkelling"],
    pImageURLs: ["HI test 1 image url .com", "HI test 2 image url .com"],
    pItineraries: 
    [
        ["Day 1", "HI do something on day 1"],
        ["Day 2", "HI do something on day 2"]
    ]
)

Entry.new(
    pName: "Boundary Water Canoeing",
    pLocation: "Minnesota Boundary Waters",
    pDate: Date.new(2016, 3, 20),
    pHighlightImageURL: "MN highlight image .com",
    pDescription: "Travel 50 miles canoeing, portaging, and camping out under the stars in the Minnesota wilderness",
    pActivities: ["Canoeing"],
    pImageURLs: ["MN test 1 image url .com", "MN test 2 image url .com"],
    pItineraries: 
    [
        ["Day 1", "MN do something on day 1"],
        ["Day 2", "MN do something on day 2"]
    ]
)

Entry.new(
    pName: "Pacific Northwest Roadtrip",
    pLocation: "Olympic National Park and Seattle",
    pDate: Date.new(2021, 7, 15),
    pHighlightImageURL: "WA highlight image .com",
    pDescription: "Explore Olympic National Park's backcountry, Seattle, and Ruby Beach. Enjoy breathtaking views as you go skydiving over Olympic National Park",
    pActivities: ["Skydiving", "Backpacking", "Kayaking"],
    pImageURLs: ["WA test 1 image url .com", "WA test 2 image url .com"],
    pItineraries: 
    [
        ["Day 1", "WA do something on day 1"],
        ["Day 2", "WA do something on day 2"]
    ]
)

Entry.new(
    pName: "Puerto Rico Exploring",
    pLocation: "Puerto Rico",
    pDate: Date.new(2022, 6, 27),
    pHighlightImageURL: "PR highlight image .com",
    pDescription: "Check out El Yunque rainforest, Old San Juan, swim in bioluminescent water while stargazing, slide down natural waterslides, and eat some street mangos",
    pActivities: ["Hiking", "Kayaking", "Ziplining", "Swimming"],
    pImageURLs: ["PR test 1 image url .com", "PR test 2 image url .com"],
    pItineraries: 
    [
        ["Day 1", "PR do something on day 1"],
        ["Day 2", "PR do something on day 2"]
    ]
)


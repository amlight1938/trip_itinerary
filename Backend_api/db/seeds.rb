# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "#{Rails.root}/lib/Entry.rb"

Itinerary.destroy_all
Image.destroy_all
Activity.destroy_all
Trip.destroy_all

Entry.new(
    pUser_id: nil,
    pName: "West Texas Roadtrip",
    pLocation: "Big Bend NP, Guadalupe Mtns. NP",
    pDate: "2017-03-04",
    pHighlightImageURL: "highlight image .com",
    pDescription: "Go on a roadtrip in western Texas to go backpacking in Big Bend, climb the highet point in Texas, and surf down sand dunes",
    pActivities: ["Backpacking", "Camping", "Sand surfing"],
    pImageURLs: ["test 1 image url .com", "test 2 image url .com"],
    pItineraries: 
    [
        "Day 1", 
        "Get on the road before the sun rises and start eating those cookies Mom packed you as you begin the 9 hour car 
            ride from Dallas to Big Bend National Park! Once you arrive at the park, drive along scenic roads and make sure to keep 
            the drool in your mouth as you stare at the amazing Chisos Mountains. Before you can setup camp, you'll need to drive 
            on the unpaved road to stash a few gallons of water for your upcoming backpacking trip. Be prepared for a water park as 
            you picked out at Walmart the only two plastic water containers that had leaks, and this road is ... bumpy!! After a 
            rollercoaster-like ride on that road, head to the Chisos Basin campground to setup camp, eat dinner, and chill around the 
            fire as you and your gang prepare for the 30 mile backpacking trip you will embark on the next morning!",
        
        "Day 2",
        "Wake up early to the news that one of your party is very sick and needs to go to the hospital (maybe hypothermia from 
            a soaked sleeping bag on the waterpark car ride from the night before?). Some of your party will go with him in the ambulance 
            to the hospital while the rest of your group begins exploring the park on the Lost Mines Trail. Once the rest of your group 
            returns, you will embark on the Outer Mountain Loop. The loop starts with a steep incline but you and your buds dont mind because 
            you are eager to see the views this park has to offer! Setup camp and race over to the East Rim Trail to take in the park's 
            majestic landscape and pinkish-red skyline during sunset. Walk back to camp in the dark and take in the sounds of your first 
            night in the Chisos Mountain ",
        
        "Day 3",
        "Whats a good trip without a last minute audible? Wake up to realie that you and your group left half your food 
            in the cars. :( Instead of the finishing the loop, turn the 3 day backapcking trip into a one night out and back. Once 
            you get back to the cars, its time to get remote! You'll be car camping at a primitive campsite right near the Rio Grande
            completely removed from civilization and any other people. Take a dip in the Rio Grande to stay cool and explore around 
            your campsite. At night, play your favorite country playlist and enjoy each others company as you stare into the night sky. 
            You've never seen this many stars in your life! This will easily be one of the most memorable nights of your life!",
        
        "Day 4",
        "Today is a nice leisurely day. You'll be driving accross the park to hike the Santa Elena Canyon - a playground of climbing boulders, 
            perfect skipping rocks, and gorgeous scenery. After the hike, drive into Terlingua Ghost Town just outside the park for lunch, 
            then head on to Guadalupe Mountains National Park where you'll spend the night and prepare for climbing Texas' tallest 
            mountain.",
        
        "Day 5",
        "Make sure to get an early start on the trail up to Guadalupe Peak to avoid the heat. Take in the views and make 
            sure to sign the peak registry. You're running out of food right now because you're traveling with 8 hungry highschool boys. 
            To ration out the food, you'll be eating a delightful lunch consisting of uncooked Dak Ham and ketchup ...thats it, enjoy!",
        
        "Day 6",
        "Since you're right next to it, might as well make a trip to Carlsbad Caverns right? Take a quick walk throughout the 
            caves and admire the stagtites and stalagmites. After the cave, begin the long drive home as the trip comes to a close, but 
            not before stopping at Monahan Sandhills State Park for some long awaited sand sledding. Make endless Star Wars Ep. 1 references 
            and battle it out with you friends in wrestlemania/ king of the sandhill. Once you're all tapped out, its time to drive home 
            and wrap up a truly memorable trip in west Texas."
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "Bike from Texas to Alaska",
    pLocation: "North America",
    pDate: "2019-05-31",
    pHighlightImageURL: "T4K highlight image .com",
    pDescription: "Ride a bicycle 4,000 miles over 70 days from Austin, TX to Anchorage, AK. See North America from a new perspective and spend nights in host homes or camping in the wilderness",
    pActivities: ["Biking", "White water rafting", "Hiking", "Camping", "Swimming"],
    pImageURLs: ["T4K test 1 image url .com", "T4K test 2 image url .com"],
    pItineraries: 
    [
        "Day 0-9",
        "T4K do something",

        "Day 10-19", 
        "T4K do something"
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "Buffalo River Backpacking",
    pLocation: "Buffalo River, Arkansas",
    pDate: "2018-03-14",
    pHighlightImageURL: "AR highlight image .com",
    pDescription: "Spend a few nights exploring the Arkansas backcountry",
    pActivities: ["Backpacking"],
    pImageURLs: ["AR test 1 image url .com", "AR test 2 image url .com"],
    pItineraries: 
    [
        "Day 1", 
        "AR do something on day 1",

        "Day 2",
        "AR do something on day 2"
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "Hawaii Multisport",
    pLocation: "Big Island of Hawaii",
    pDate: "2022-06-14",
    pHighlightImageURL: "HI highlight image .com",
    pDescription: "See Volcano National Park, black sand beaches, and explore the less traveled areas of Hawaii's Big Island by bike, foot, and kayak",
    pActivities: ["Biking", "Kayaking", "Hiking", "Snorkelling"],
    pImageURLs: ["HI test 1 image url .com", "HI test 2 image url .com"],
    pItineraries: 
    [
        "Day 1", 
        "HI do something on day 1",

        "Day 2", 
        "HI do something on day 2"
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "Boundary Water Canoeing",
    pLocation: "Minnesota Boundary Waters",
    pDate: "2016-03-20",
    pHighlightImageURL: "MN highlight image .com",
    pDescription: "Travel 50 miles canoeing, portaging, and camping out under the stars in the Minnesota wilderness",
    pActivities: ["Canoeing"],
    pImageURLs: ["MN test 1 image url .com", "MN test 2 image url .com"],
    pItineraries: 
    [
        "Day 1", 
        "MN do something on day 1",

        "Day 2", 
        "MN do something on day 2"
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "Rock Climbing Overnight",
    pLocation: "Vail, Colorado",
    pDate: "2022-07-04",
    pHighlightImageURL: "CO highlight image .com",
    pDescription: "Camp in remote territory and conquer your fear of heights while climbing towering cliffs for two days",
    pActivities: ["Rock climbing", "Camping"],
    pImageURLs: ["CO test 1 image url .com", "CO test 2 image url .com"],
    pItineraries: 
    [
        "Day 1", 
        "CO do something on day 1",

        "Day 2", 
        "CO do something on day 2"
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "Climb a 14er",
    pLocation: "Decalibron Loop, Colorado",
    pDate: "2022-06-11",
    pHighlightImageURL: "CO highlight image .com",
    pDescription: "Camp at the base of Mt. Democrat and hike 2,000ft to the summit in the early morning",
    pActivities: ["Hiking", "Camping"],
    pImageURLs: ["CO test 1 image url .com", "CO test 2 image url .com"],
    pItineraries: 
    [
        "Day 1", 
        "CO do something on day 1",

        "Day 2", 
        "CO do something on day 2"
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "Pacific Northwest Roadtrip",
    pLocation: "Olympic National Park and Seattle",
    pDate: "2021-07-15",
    pHighlightImageURL: "WA highlight image .com",
    pDescription: "Explore Olympic National Park's backcountry, Seattle, and Ruby Beach. Enjoy breathtaking views as you go skydiving over Olympic National Park",
    pActivities: ["Skydiving", "Backpacking", "Kayaking"],
    pImageURLs: ["WA test 1 image url .com", "WA test 2 image url .com"],
    pItineraries: 
    [
        "Day 1", 
        "WA do something on day 1",

        "Day 2", 
        "WA do something on day 2"
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "Puerto Rico Exploring",
    pLocation: "Puerto Rico",
    pDate: "2022-06-27",
    pHighlightImageURL: "PR highlight image .com",
    pDescription: "Check out El Yunque rainforest, Old San Juan, swim in bioluminescent water while stargazing, slide down natural waterslides, and eat some street mangos",
    pActivities: ["Hiking", "Kayaking", "Ziplining", "Swimming"],
    pImageURLs: ["PR test 1 image url .com", "PR test 2 image url .com"],
    pItineraries: 
    [
        "Day 1",
        "PR do something on day 1",

        "Day 2", 
        "PR do something on day 2"
    ]
)



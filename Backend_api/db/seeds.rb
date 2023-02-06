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
    pName: "Climb Mt. Democrat",
    pLocation: "Decalibron Loop, Colorado",
    pDate: "2022-06-11",
    pHighlightImageURL: "CO highlight image .com",
    pDescription: "Camp at the base of Mt. Democrat (14,155ft) and hike 2,000ft of elevation to the summit in the early morning",
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

Entry.new(
    pUser_id: nil,
    pName: "Backpack Long's Peak",
    pLocation: "Rocky Mountain Nat. Park",
    pDate: "2022-08-06",
    pHighlightImageURL: "CO highlight image .com",
    pDescription: "Spend two days climbing Long's Peak (14,259ft), Colorado's deadliest 14er. Spend a night in Boulderfield before your summit bid through the keyhole the next morning",
    pActivities: ["Backpacking", "Climbing"],
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
    pName: "Canaveral Nat. Seashores Canoeing",
    pLocation: "Canaveral Nat. Seashores, Florida",
    pDate: "2022-04-15",
    pHighlightImageURL: "FL highlight image .com",
    pDescription: "Throw all your gear in a canoe and paddle out amongst dolphins to a secluded island to spend the night next to a roaring campfire",
    pActivities: ["Canoeing", "Camping"],
    pImageURLs: ["FL test 1 image url .com", "FL test 2 image url .com"],
    pItineraries: 
    [
        "Day 1",
        "FL do something on day 1",

        "Day 2", 
        "FL do something on day 2"
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "Biking up Pikes Peak",
    pLocation: "Pikes Peak, Colorado",
    pDate: "2022-05-28",
    pHighlightImageURL: "CO highlight image .com",
    pDescription: "Grab your roadbike and fight the urge to quit on this grueling 17 mile and 7,000ft elevation gain bike ride up Pikes Peak (14,115ft)",
    pActivities: ["Biking", "Questioning your life choices"],
    pImageURLs: ["CO test 1 image url .com", "CO test 2 image url .com"],
    pItineraries: 
    [
        "Day 1",
        "CO do something on day 1",
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "Backpacking Four Pass Loop",
    pLocation: "Maroon Bells, Colorado",
    pDate: "2020-08-11",
    pHighlightImageURL: "CO highlight image .com",
    pDescription: "Climb four different mountain passses, swim in frigid mountain lakes, and enjoy good company on this 30 mile loop near Aspen, Colorado",
    pActivities: ["Backpacking", "Swimming"],
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
    pName: "Buckcreek Pass Loop Backpacking",
    pLocation: "Leavenworth and Seattle, Washington",
    pDate: "2020-08-23",
    pHighlightImageURL: "WA highlight image .com",
    pDescription: "Buy plane tickets one day in advance for this spantaneous 40 mile backpacking trip with some of the most gorgeous views you'll ever see. Explore Seattle after the hike",
    pActivities: ["Backpacking", "Exploring Seattle"],
    pImageURLs: ["PR test 1 image url .com", "PR test 2 image url .com"],
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
    pName: "After work rock climbing",
    pLocation: "Clear Creek Canyon, Colorado",
    pDate: "2022-10-05",
    pHighlightImageURL: "CO highlight image .com",
    pDescription: "To get to this climbing crag, you'll need to climb a tree, hook into a cable, and pull yourself across a river. Make sure you bring a headlamp since the sun is going down",
    pActivities: ["Rock climbing"],
    pImageURLs: ["PR test 1 image url .com", "PR test 2 image url .com"],
    pItineraries: 
    [
        "Day 1",
        "PR do something on day 1",
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "Great Sand Dunes Day Trip",
    pLocation: "Great Sand Dunes Nat. Park",
    pDate: "2023-01-15",
    pHighlightImageURL: "PR highlight image .com",
    pDescription: "Experience a real life game of Settlers of Catan as you explore the park's sand dunes, mountains, forests, plains, and frozen waterfalls all in one day",
    pActivities: ["Hiking"],
    pImageURLs: ["PR test 1 image url .com", "PR test 2 image url .com"],
    pItineraries: 
    [
        "Day 1",
        "PR do something on day 1",
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "Weekend in New York City",
    pLocation: "New York, New York",
    pDate: "2021-12-10",
    pHighlightImageURL: "PR highlight image .com",
    pDescription: "Ice skate in Brooklyn, get a tour of the 3rd World Trade Center, discover an underground speakeasy, and win an extremely competitive game of bar trivia with your team",
    pActivities: ["Ice skating", "Walking", "Nightlife"],
    pImageURLs: ["PR test 1 image url .com", "PR test 2 image url .com"],
    pItineraries: 
    [
        "Day 1",
        "PR do something on day 1",

        "Day 2", 
        "PR do something on day 2"
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "Italy",
    pLocation: "Italy",
    pDate: "2018-05-01",
    pHighlightImageURL: "PR highlight image .com",
    pDescription: "Spend a month in Italy traveling to Cinque Terre, the Alps, Florence, Rome, and Milan. Take a cooking class, swim in the Mediterranean, and hike along the coast",
    pActivities: ["Swimming", "Hiking", "Cooking", "Nightlife"],
    pImageURLs: ["PR test 1 image url .com", "PR test 2 image url .com"],
    pItineraries: 
    [
        "Day 1",
        "PR do something on day 1",

        "Day 2", 
        "PR do something on day 2"
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "Alaska Multisport",
    pLocation: "Anchorage, Kenai Fjords, Seward, AK",
    pDate: "2019-08-10",
    pHighlightImageURL: "PR highlight image .com",
    pDescription: "Take in magnificent views of a pristine wilderness and wildlife at Kenai Fjords Nat. Park, go fishing on the beach, kayak in the bay, and hike on Exit Glacier",
    pActivities: ["Kayaking", "Hiking", "Wildlife watching", "Fishing"],
    pImageURLs: ["PR test 1 image url .com", "PR test 2 image url .com"],
    pItineraries: 
    [
        "Day 1",
        "PR do something on day 1",

        "Day 2", 
        "PR do something on day 2"
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "Midnight 14er Hike",
    pLocation: "Mt. Quandary (14,271 ft)",
    pDate: "2022-09-24",
    pHighlightImageURL: "PR highlight image .com",
    pDescription: "Enjoy the peaceful and quiet night as you gaze up at the stars throughout the trek up Mt. Quandary (14,271 ft). If you're lucky, a mountain goat will walk right up to you and say hi",
    pActivities: ["Hiking", "Star gazing"],
    pImageURLs: ["PR test 1 image url .com", "PR test 2 image url .com"],
    pItineraries: 
    [
        "Day 1",
        "PR do something on day 1",
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "Yosemite Backpacking and San Francisco",
    pLocation: "Yosemite Nat. Park, San Francisco, California",
    pDate: "2015-06-01",
    pHighlightImageURL: "PR highlight image .com",
    pDescription: "Backpack through Yosemite's beautiful wilderness, walk across cloud's rest, and top off the trip with a climb up Half Dome. Afterwards, travel to San Francisco to see Alcatraz",
    pActivities: ["Backpacking"],
    pImageURLs: ["PR test 1 image url .com", "PR test 2 image url .com"],
    pItineraries: 
    [
        "Day 1",
        "PR do something on day 1",

        "Day 2", 
        "PR do something on day 2"
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "Eagle Rock Loop Backpacking",
    pLocation: "Ouachita Mountains, Arkansas",
    pDate: "2017-06-06",
    pHighlightImageURL: "PR highlight image .com",
    pDescription: "Experience rugged Arkansas on this 28 mile steep up and down loop in the Ouachita Mountains",
    pActivities: ["Backpacking"],
    pImageURLs: ["PR test 1 image url .com", "PR test 2 image url .com"],
    pItineraries: 
    [
        "Day 1",
        "PR do something on day 1",

        "Day 2", 
        "PR do something on day 2"
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "IRONMAN Indiana",
    pLocation: "Muncie, Indiana",
    pDate: "2021-10-02",
    pHighlightImageURL: "PR highlight image .com",
    pDescription: "Travel to the middle of nowehere Indiana to race in Indiana's first full Ironman! Swim 2.4 miles, Bike 112 miles, and run 26.2 miles? Easy right...",
    pActivities: ["Swimming", "Biking", "Running", "Questioning your life choices"],
    pImageURLs: ["PR test 1 image url .com", "PR test 2 image url .com"],
    pItineraries: 
    [
        "Day 1",
        "PR do something on day 1",

        "Day 2", 
        "PR do something on day 2"
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "Grand Staircase Roadtrip",
    pLocation: "Grand Canyon, Bryce Canyon and Zion Nat. Parks, Utah",
    pDate: "2017-07-31",
    pHighlightImageURL: "PR highlight image .com",
    pDescription: "Travel to the Grand Canyon, Bryce Canyon and Zion National Parks. Conquer your fear of hieghts at Zion on the Angle's Landing trail, which is not for the faint of heart.",
    pActivities: ["Hiking"],
    pImageURLs: ["PR test 1 image url .com", "PR test 2 image url .com"],
    pItineraries: 
    [
        "Day 1",
        "PR do something on day 1",

        "Day 2", 
        "PR do something on day 2"
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "Lost Maples Backpacking",
    pLocation: "Lost Maples St. Park, Texas",
    pDate: "2021-04-09",
    pHighlightImageURL: "PR highlight image .com",
    pDescription: "Do a quick and spontaneous one nighter trip at Lost Maples.",
    pActivities: ["Backpacking"],
    pImageURLs: ["PR test 1 image url .com", "PR test 2 image url .com"],
    pItineraries: 
    [
        "Day 1",
        "PR do something on day 1",

        "Day 2", 
        "PR do something on day 2"
    ]
)

# Entry.new(
#     pUser_id: nil,
#     pName: "",
#     pLocation: "",
#     pDate: "",
#     pHighlightImageURL: "PR highlight image .com",
#     pDescription: "",
#     pActivities: ["", ""],
#     pImageURLs: ["PR test 1 image url .com", "PR test 2 image url .com"],
#     pItineraries: 
#     [
#         "Day 1",
#         "PR do something on day 1",

#         "Day 2", 
#         "PR do something on day 2"
#     ]
# )



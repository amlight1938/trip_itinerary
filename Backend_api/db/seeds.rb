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
        "Austin, TX -> Whichita, KS",

        "Day 10-19", 
        "Whichita, KS -> Estes Park, CO",

        "Day 20-29", 
        "Estes Park, CO -> West Yellowstone, WY",

        "Day 30-39", 
        "West Yellowstone, WY -> Glacier Nat. Park, MT",

        "Day 40-49", 
        "Glacier Nat. Park, MT -> Smithers, British Columbia",

        "Day 50-59", 
        "Smithers, British Columbia -> Whitehorse, YT",

        "Day 60-70", 
        "Whitehorse, YT -> Anchorage, AK",
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
        "You and your buddies had such a blast last spring break that you thought you'd go for round two this spring break. This time 
        you head out to Arkansas to do some backpacking around Buffal River. You've seen ome videos online about a secret spot to setup 
        camp and watch the sunset and you're determined to find it. The drive isnt too bad so you get to campat the trailhead with 
        some time to relax or explore before the sun goes down. Your buddy has the urge to cook beer boiled bratwursts. So half the 
        night will be spent cleaning up after the boiled beer brats spill everywhere - a good laugh to get the trip started.",

        "Day 2",
        "First day of backpacking! Head out on the trail the next morning and begin your search of the fabled \"secret camping spot\" 
        that you found on youtube during your research for this trip. After hiing a few miles you realize you have no clue where this 
        spot is and that you also have been hiking for a few hours but have kind of been going in circles. Whoopsies. After a while, 
        everyone questions why you built a whole trip around trying to find one secret spot that a youtube video told us about yet at 
        the same time, everyone is having a great time. You soon find an abandoned cabin with a large fire ring and decide to camp there. 
        Enjoy a nice dinner cooked over the fire while you admore the view over a few cliffs in the distance. It wasn't the spot you were 
        hoping for but it certainly is beatiful.",

        "Day 3",
        "On your second day of hiking, take in the towering cliffs on either side of you as you cross a freezing cold river barefoot 
        to not get your shoes wet. Take a nice break on the other side of the river and bust out the summer sausage you brough for lunch 
        (no backpacking tip is complete without a summer sausage for lunch). Gain some elevation and setup camp at the top of one of the 
        cliffs wth views in all directions. Turns out one of your more wild friends brought a few drinks in his backpack. As you're 
        sitting around the campfire in the dark, you see two people coming though the woods towards you. Its pretty chily but all they are 
        wearing are jeans and a long sleeve shirt, and all they have to guide them is the light of a DSLR camera. They claim theyve been 
        hiking for hours and have gotten lost. Make some new friends tonight and let them stay with you guys overnight. Good thing you brought 
        your hammock to sleep in while they take your tent.",

        "Day 4",
        "Head on back to your cars in the morning, which is also in the same direction as your new friends' car. ENjoy the final views 
        of the Buffal National River as you arrive at your car and drive off concluding another successful spring break backpacking trip."
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
        "Start the day off with a 13 mile peaceful early morning run in the rain on the Big Island. Run through some rural areas 
        outside the city and see some wild rainbow colored chickens that are surprisingly territorial. Once you come back from 
        the run you'll meet your tour guide group and hit the road with them. First you'll hit the southernmost point in the US 
        to hike to a green sand beach. Your group will then head to your lodge next to Hawaii Volcanoes National Park. You'll feel 
        like you are in Jurassic Park.",

        "Day 2", 
        "Today is the first bike ride of the trip. Explore dried lava fields, the coastline, and forest roads. Afte the bike ride, 
        enjoy a few hours of free time in the hot tub or around the bed and breakfast. Meet for dinner with your tour group in the 
        evening and get to know some people on the tour.",

        "Day 3", 
        "Take a guided hike in Volcanoes National Park and hear exciting facts about the terrain. See remnants of volcanic eruptions, 
        caves, and tropical forests. After the hike, drive with your group to the east side of the Island and take a bike ride along 
        the beautiful and quiet coastline with many opportunities for photos.",

        "Day 4", 
        "Drive over the volcano from the East side of the Big Island to the West side to the resort you will be staying in for the 
        final two nights. Before stopping at the resort, you'll do a bike ride along the north side of the island along the same route 
        that the Ironman World Championship takes each year. This is something you've been really looking forward to since you've been 
        training for an Ironman of your own for the past several months. The route is notoriously windy so try not to get blown over! 
        After the ride, enjoy some drinks at the resort and explore the beach.",

        "Day 5", 
        "You've got some free time today and it just so happens that two high school buddies are in Hawaii at the same time as you! 
        Head over to Kona with them to take a surfing lesson from a local. Shred some waves and grab a bite with them for the night.",

        "Day 6", 
        "Last day in Hawaii :( Not much going on today buy you'll start the morning off with some friendly competition on the voleyball courts with some other folks on 
        your tour. Say your goodbyes and reminisce about the awesome time you've had in Hawaii!",
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "Boundary Water Canoeing",
    pLocation: "Minnesota Boundary Waters",
    pDate: "2016-03-20",
    pHighlightImageURL: "MN highlight image .com",
    pDescription: "Travel 50 miles canoeing, portaging, and camping out under the stars in the Minnesota wilderness",
    pActivities: ["Canoeing", "Fishing", "Cliff jumping"],
    pImageURLs: ["MN test 1 image url .com", "MN test 2 image url .com"],
    pItineraries: 
    [
        "Day 1", 
        "Grab your paddles, canoes, and enough food for 4 days out on the water. This trip will be like all the backpacking you've 
        done before but instead of walking, you'll be canoeing and setting up camp along the sides of rivers and lakes, with the 
        occasional portage (carrying your canoes over land). Also bring a fishing rod with you to tow behind the canoe since whatever 
        you catch you can eat.",

        "Day 2", 
        "Wake up early in order to get to the campsite known for its cliff jumping! This will be your first clif jumping experience. 
        The cliff is about 40 feet tall and somehow the first few times you jump you're not scared but after the first few, you start 
        to rethink it all. Maybe your brain is finally catching up and realizing how dumb this is? But either way it's an incredible 
        time so you dont want to stop. ",

        "Day 3", 
        "Wake up in the middle of the night to the sound of one of your canoes falling into the river and floating away. Scramble to 
        hop into another one to get it back. A great adrenaline inducing start to the day! At camp, gather some wild berries and learn 
        how to gut and clean the fish that you caught earlier in the day. For dessert, experiment with making a gatorade cake by cooking 
        gatorade powder. It'll turn out exactly as you're imagining it would right now. So maybe dont try it after all.",

        "Day 4", 
        "Last day on the water! Enjoy good company and paddle through some pseudo rapids on your way back to basecamp to finish 
        out the trip with a bang.",
    ]
)

Entry.new(
    pUser_id: nil,
    pName: "Rock Climbing / Rafting Overnight",
    pLocation: "Vail, Colorado",
    pDate: "2022-07-04",
    pHighlightImageURL: "CO highlight image .com",
    pDescription: "Camp in remote territory and conquer your fear of heights while climbing towering cliffs for two days",
    pActivities: ["Rock climbing", "Camping", "White water rafting"],
    pImageURLs: ["CO test 1 image url .com", "CO test 2 image url .com"],
    pItineraries: 
    [
        "Day 1", 
        "Start the trip off by playing Big Bootie Mix by Two Friends in the car (the perfect roadtrip soundtrack). You'll arrive at 
        the campsite in the afternoon and have some time to setup camp. Make sure not to step in any cow patties! This is one of the 
        most remote campsites you'll ever see. This is Bureau of Land Management Land so you dont have to worry about permits. Build 
        a fire and roast some weenies while you meet some new friends. Just across the field you're camping in is an incredible view 
        of a giant canyon which you'll be climbing in tomorrow so get a good nights sleep.",

        "Day 2", 
        "Take your time in the morning and relax around the morning campfire for breakfast. After that head on over to the crag to 
        start the day off. This will be your first day attempting to lead a climb (a climbing technique whereby you clip in to points 
        on the wall as you climb up instead of having the anchor already set up at the top). This technique is more dangerous but 
        comes with a massive adrenaline rush! Finish off the day with another relaxing campfire, some drinks, and a beautiful sunset.",

        "Day 3",
        "You know how they say you should find a friend with a boat? Well you finally found one. Someone on the trip has recently bought 
        his own river raft and brings you along for the ride on the Colorado River. The rapids arent very high at this point so it turns 
        into a relaxing drink and float trip."
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
        "Nothing produces flat tires like a rocky dirt road, and thats just what you'll be driving on to get to the trailhead of 
        the Decalibron Loop. Once you change the flat tire on one of your group's two cars, leave that car in a hostel's parking 
        lot and cram into one car. Its more fun that way anyways right. Drive through the night looking for a spot to setup camp 
        and enjoy the Dominos pizza you brought along for dinner. ",

        "Day 2", 
        "Since your 2 wheel drive car couldnt get up the hill, you had to camp a mile down the road so you get to hike extra today! 
        The Decalibron Loop is one trail that conects four 14ers. Start with Mt. Democrat, the tallest one. This climb will test you. 
        It will be steep, rocky, snowy, and icy. On the bright side, you'll get to slide down coming back! Once you finish Mt. Democrat 
        you and your group will be way more tired than anticipated. Going home seems like a solid idea, especially since you have to drive 
        a car with a donut for 2 hours on a highway. "
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
        "You will be splitting up the 15 mile roundtrip hike up Long's Peak (14,259ft) into two days. Today you will hike to the 
        Boulderfields and setup camp in order to get a head start on the summit bid tomorrow. Along the way you'll see some stunning 
        views of the mountain, plenty of wildlife, and even some Alpacas.",

        "Day 2", 
        "Today is summit day! Wake up in the middle of the night and look into the distance to see clusters of headlamps headed 
        your way. These are all hikers who are doing all 15 miles in one day. Gather your gear and head off towards the keyhole. 
        The real fun begins after you cross through the Keyhole. There are four sections on the hike to the summit - the ledges, 
        the trough, the narrows, and the final summit climb. The ledges is retty scary at first but you slowly adjust and feel 
        more comfortable as you move forward. Once you're through the ledges, you begin the 600 ft climb up the trough. Its more 
        of a scramble than a hike. Bring a helmet to protect against falling rocks from the climbers above you. If you're afraid 
        of heights then the next part is the worst. The Narrows are just that ... narrow! One wrong step and you could easily fall 
        off the side of the mountain. After the Narrows is the final push to the summit, not as hard as the last few climbs but 
        still a challenge. When you finally reach the summit, look for the tiny dots below you in the boulderfield that are your 
        tents you left from the night before."
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
        "Once all your gear is stowed away in the canoe, start paddling out into the Indian river and through the maze of islands 
        that is Canaveral National Seashores. If you're lucky, you'll see some dolphins stick their heads out of the water near 
        your canoe. Gp ahead and name them if you feel so inclined. Your permit is for a small island covered with some pretty 
        thick mangroves except for a clearing for the tents and a fire ring. You wont be abe to do much eploring on the island 
        since the vegetation is so thick but you can continue canoeing after camp has been setup. Make dinner over the fire and 
        chill in a hammock ladder between two perfectly placed palm trees.",

        "Day 2", 
        "After a night on your own island, it's time to head home. Packup your gear and start paddling back to the car. Keep an eye 
        out for Ollie and Kickflip (the dolphins you named yesterday) on the way back."
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
        "Not sure what you were thinking when you had the brilliant idea of biking up Pikes Peak in Colorado. And on top of that, 
        you only just moved to Colorado like two weeks ago. Can you spell Oxygen deprivation? This will be a tough ride. 17 miles 
        and 7,000 ft of elevation gain. Good thing you'll have a great friend biking with you who is also a sucker for the pain. 
        The last few miles will be the most difficult as the winds will be strong, the temperatures will be in the 30s, and your 
        fear of heights will be taking over because the roads have steep dropoffs and no guard rails, but you get cheers from every 
        car that passes you. Once at the top, make sure to celebrate and then start asking some nice folks for a ride down because 
        you cannot handle another minute on that bike. Even though you got a ride down, you leave the mountain proud that you just 
        completed a monster ride!",
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
        "For a spontaneous adventure, look no further than 30 minutes away from Denver. You and a friend can grab your gear head 
        over to Clear Creek Canyon. The wall you want to get to is guarded by a fast moving river so to get there you'll start by 
        climbing 20 feet up in a tree and clip into a cable that connects the tree, runs over the river, and attaches to the wall 
        on the other side. Once you're clipped in, pull yourself accross the river in whats know as a Tyrolean Traverse (look it up).
        Once at the wall, you can begin climbing. These routes are 130 ft tall! Great for someone with a fear of heights. After a few 
        ascents, the sun sets and you'll quickly realize that you ant see the next bolt to clip into on the wall. You'll have to 
        carefully downclimb a couple feet to the last bolt in order be lowered. Now you have to traverse the river and climb down 
        the tree in the dark. Bring a headlamp next time!",
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
        "Leave at 3am from Denvr to start a 3 hour drive to Great Sand Dunes National Park. Enteratain yourselves with 2000s pop 
        and Nickleback on the way there. If you arrive before the park opens take a short hike to Zapata Falls outside the park. 
        By this time of year it is completely frozen over as well as the creek below it. To get to the falls you'll need to walk 
        on the frozen creek which can be quite scary. Take it slow and try not to slip on the ice. Once finished with the hike 
        drive into the park to climb the sand dunes. Enjoy the miles of sand dune scenery because it is unlike anything else 
        you'll see in Colorado. Bring face protetion since the winds are very strong and tend to pick up a lot of sand. You can 
        sandboard during the summer months but if you're there in the winter, you can try to tube down if you have something 
        slipery enough.",
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
        "Week 1",
        "This month you will be staying in Milan for a study abroad class. You will be going to class in Milan for four days a week 
        and over the three day weekends you will be able to travel to various cities aroud Italy! This first week you'll do some 
        exploring around Milan. You can checkout Il Duomo, the Navigli District, and Sforzesco Castle among other things. This first 
        weekend you will be traveling by train to Porto Venere and Cinque Terre, a group of beautiful towns along the cliffs overlooking 
        the Mediterranean Sea. Hike between towns, swim in the Mediterranean, enjoy dinners at small local restuarants, and stay in a 
        local hostel for the weekend.",

        "Week 2", 
        "During your second week in Italy, along with the rest of your class, you will be attending an Italian cooking class in Milan. 
        The most valuable lesson you will learn is called \"chef's touch\". Ove the weekend, take a train to Florence to do some more 
        exploring. Take in the views from the top of Il Duomo and see the countryside.",

        "Week 3", 
        "For the third week in Itlay, try visiting Rome to see things like the Colosseum, Trevi Fountain, and Vatican City. Be ure to 
        make plenty of \"when in rome\" jokes as well.",

        "Week 4", 
        "For your last weekend in Italy, your class will be traveling to the Alps. You'll be staying in a small hotel rihgt in the 
        middle of the mountains with incredible views in every direction. Take a gondola to the peak of one of the mountains for some 
        awesome views, find some secluded hiking trails, and in the evenings enjoy some excellent Italian dinners with your new friends 
        and reminisce over the last month that you have spent together. This is a trip that you will truly remember.",
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
    pDescription: "Enjoy the peaceful and quiet night as you gaze up at the stars on the trek up Mt. Quandary (14,271 ft). If you're lucky, a mountain goat will walk right up to you and say hi",
    pActivities: ["Hiking", "Star gazing"],
    pImageURLs: ["PR test 1 image url .com", "PR test 2 image url .com"],
    pItineraries: 
    [
        "Day 1",
        "It's just you, your headlamp, and the starlit night sky as you hike up Mt. Quandary (14,271 ft) in the middle of the night. This 
        hike isnt easy but compared to most 14er hikes in Colorado it's not bad - perfect for a first midnight 14er ascent! Bundle up 
        warmly as it will be below freezing for a large portion of the hike. If you stop along the way to listen to the woods around 
        you, you'll hear the occasional animal scurrying around in the bushes but for the most part it's completely silent. The wind 
        isnt bad at night except at the veryb top of the mountain. Once you get there hunker down next to some natural wind barriers 
        and stare up at the stars. You will be the first person up the mountain today, and thats a pretty big accomplishment becuase 
        most Coloradans wake up early and hike fast when it comes to 14ers. On the way down, watch the sky turn from black violet 
        to dark blue to light blue as the sun peeks over the horizon. Mountain goats will come out around this time and if you're lucky 
        they'll come right up to you.",
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
        "Pile into Bluey (the name you gave your frined's car) and start the drive to the Ouachita Mountains in Arkansas. The 28 
        mile loop you are about to take on is no joke. There is a huge amount of elevation gain and loss throughout the trail but 
        the views and scenery are worth it. To get to the trailhead, you'll need to drive down a pretty rocky road, one that your 
        car is certainly not meant to drive on, and you'll definitely deal with the consequences later, but for now you've arrived 
        at the trailhead and are ready to begin the hike. Right off the bat you start breathing heavy as you climb up the first 
        of many mountain ridges.",

        "Day 2", 
        "In the morning, climb up to a peak to take in the stuning Arkansas views and snag some pictures. Continue hiking through 
        dense brush covering the trail and up and down the mountain ridges until you arrive at your next campsite. Build a big fire
        and remove the ticks that you mot certainly picked up crawling through the brush.",

        "Day 3", 
        "Congratulations, you brought a broken water filter on this trip. Now it takes like 30 minutes to filter enough water for 
        one water bottle. Just means you get to enjoy the rivers for longer. Find a nice campsite along the river for your thrid 
        night. By this time the terrain is a bit different from the first two days but just as pretty.",

        "Day 4", 
        "Last day of hiking! Finish the hike strong and return to your car to see that you got a flat tire from the rocky road 
        to the trailhead. Time for your first car tire change! After half an hour of figuring that out, youre off! Once you're back 
        on paved road you realize you are low on gas, low on tire pressure, and are hungry for a snack. You're in the middle of 
        nowehere so you keep driving and suddleny a miracle... you find a pie shop, gas station, and auto repair shop all right 
        next to each other. After getting the tire fixed and loading up on fried pies, head on home and conclude a great trip."
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
        "You're signed up for a full Ironman! Fly into Indianapolis two days early to get enough time to settle in and pickup your 
        race packet. Explore Indianapolis for a few hours on your own today since your friends who are also doing the race are arriving 
        after you. Don't tell anyone but theres not much to see in Indianapolis. Once everyone arrives, gather the squad into a van and 
        head over to your Airbnb outside of Muncie, IN, the city where the race will take place.",

        "Day 2", 
        "Today you'll pick up your race packet, attend an information session for all participants, and check out part of the race course. 
        Test out the wetsuit you're renting, take your bike for a quick ride to make sure it rides nicely after being shipped, and shakeout 
        your legs on a brief run. At night, organize all your gear into the proper transition bags and try to get a good night's sleep (you 
        wont be able to)",

        "Day 3",
        "The moment you've been training for has finally arrived - Race day! A hurricane of emotions is swirling through your mind 
        at this point - fear and excitemnt among the most prevalent. You've trained hard for 9 months and made sacrifices in your 
        lifestyle for this, and now it's time to earn your reward. The race starts with a 2.4 mile swim at sunrise through open water. 
        Get comfortable with being punched and kicked as you're swimming in a crowd of hundreds of people. After the swim, run over to 
        your bike in the transition area, put on your bike jersey, eat a quick snack and you're off on a 112 mile bike ride. After about 
        30 miles you start to feel some pain in your left knee. You trained hard and experienced this injury during your trining just a 
        few weeks before and unfortuntley it has found you agian. Good thing you're a sucker for the pain. Start making up some songs 
        about corn or something becuase biking 112 miles alone in Indiana with knee pain isn't the most entertaining thing in this world. 
        Finishing the bike ride is a fantastic feeling! Lay down at your transition area and take a quick break. Try not to think about 
        the whole ass marathon you have to run to finish the race. If you thought biking with a hurting knee was bad, you're infor a 
        surprise when you start running. Soon it gets dark and those feelings of doubt that you pushed through so many times in training 
        start piling up in your head, only this time far worse than you've experienced before. All you can think about is putting one 
        foot after the other and never stopping because if you stop you know you might never start again. Keep your pace in mind since there 
        is a 16.5 hour cutoff before being disqualified. After 15 hours and 56 minutes, the occasional tears, and hundreds of training miles 
        later, you are crossing the finish line and it feels more incredible than you ever could have imagined."
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
        "Bryce canyon",

        "Day 2", 
        "Grand Canyon",

        "Day 3", 
        "Zion",

        "Day 4", 
        "Angels Landing",
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

# Entry.new(
#     pUser_id: nil,
#     pName: "Lost Maples Backpacking",
#     pLocation: "Lost Maples St. Park, Texas",
#     pDate: "2021-04-09",
#     pHighlightImageURL: "PR highlight image .com",
#     pDescription: "Do a quick and spontaneous one nighter trip at Lost Maples.",
#     pActivities: ["Backpacking"],
#     pImageURLs: ["PR test 1 image url .com", "PR test 2 image url .com"],
#     pItineraries: 
#     [
#         "Day 1",
#         "PR do something on day 1",

#         "Day 2", 
#         "PR do something on day 2"
#     ]
# )



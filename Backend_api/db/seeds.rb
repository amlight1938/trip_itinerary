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

#Pacific Northwest Roadtrip
Entry.new(
    pUser_id: nil,
    pName: "Pacific Northwest Roadtrip",
    pLocation: "Olympic National Park and Seattle",
    pDate: "2021-07-15",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Pacific+Northwest+Roadtrip/Pacific+Northwest+Roadtrip+highlight.jpg",
    pDescription: "Explore Olympic National Park's backcountry, Seattle, and Ruby Beach. Enjoy breathtaking views as you go skydiving over Olympic National Park",
    pActivities: ["Skydiving", "Backpacking", "Kayaking"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Pacific+Northwest+Roadtrip/PXL_20210722_015117070.MP.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Pacific+Northwest+Roadtrip/PXL_20210722_140704339.jpg", 
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Pacific+Northwest+Roadtrip/PXL_20210722_141512528.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Pacific+Northwest+Roadtrip/PXL_20210722_161326904.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Pacific+Northwest+Roadtrip/PXL_20210722_181232543.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Pacific+Northwest+Roadtrip/PXL_20210722_184233646.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Pacific+Northwest+Roadtrip/PXL_20210722_203742860.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Pacific+Northwest+Roadtrip/PXL_20210722_212313797.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Pacific+Northwest+Roadtrip/PXL_20210722_212325884.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Pacific+Northwest+Roadtrip/PXL_20210722_225026077.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Pacific+Northwest+Roadtrip/PXL_20210723_000423814.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Pacific+Northwest+Roadtrip/PXL_20210723_045633871.NIGHT.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Pacific+Northwest+Roadtrip/PXL_20210723_182833859.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Pacific+Northwest+Roadtrip/PXL_20210723_234059717.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Pacific+Northwest+Roadtrip/PXL_20210724_221357208.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Pacific+Northwest+Roadtrip/PXL_20210724_225800045.jpg",
    ],
    pItineraries: 
    [
        "Day 1", 
        "As you walk around the streets of Seattle, enjoy a crazy surprise when you run into a good friend from highschool that you 
        havent seen in years! Spend the whole day catching up as you explore the city together. Some things you can do include kayaking 
        on Lake Union with a fantastic view of the skyline, visiting Gasworks park, walking around downtown, visiting the famous Seattle 
        bridge troll, and grabbing dinner. After you part ways with your old friend, you and the rest of your group will need to go 
        grocery shopping to prepare for your upcoming backpaking trip in Olympic National Park tomorrow. Throw in some nice sweets as a 
        top of the mountain surprise for those who weren't shopping with you.",

        "Day 2", 
        "Today is the day you've been waiting for since the dawn of time. Today you are going skydiving!! Stop along your way to Olympic 
        National Park at the skydiving location. Try to keep your nerves under control as they strap the harness onto you and load you 
        into the plane. If you're extra afraid dont sit near the door becuase it's not even a door. It's just a rickety piece of plastic 
        they slide down and dont even lock. As you climb to 14,000 ft, listen closely to your instructor as he gives you direction but it's 
        basically the scene from 'Finding Nemo' where the sea turtles are telling Marlin how to exit the EAC current and he can't hear a 
        single thing. It'l be a thrill you never forget. Dont forget to take in the views of Olympic Park on the way down. After skydiving 
        head over to Olympic where you'll begin the backpacking trip with a short hike to your first campsite.",
        
        "Day 3", 
        "Today is a long day. 16 miles to be exact. Lots of elevation gain and loss but it'll all be worth it when you are rewarded with 
        views of muntains and wildlife along the way. Keep an eye out for Clyde, a friendly black bear who hangs out around this trail. 
        He'll want to come up close and say hi on the trail so make sure you stay together and get loud when he starts coming towards you. 
        He's a subborn one. Enjoy some of nature's playground slides on the snowy hillside. Watch out for rocks on the way down though! 
        The hardest part of today's hike is at the end - the last three miles is a few thousand feet straight uphill to your reserved 
        campsite. Once you get there, enjoy the views it offers and relax after a hard of hiking!",
        
        "Day 4", 
        "Today is your last day on the trail! Start the hike back to the car with a hike back down the mountain that caused your heart to race the day befroe, only this time it's 
        way easier. Pass the time with your friends by playing some games like cheers to the governor or 20 questions. If you're feeling 
        adventurous, finish the last half mile of the loop barefoot. Go and celebrate the completion of the hike with some real food now!" 
    ]
)

#Bike from Texas to Alaska
Entry.new(
    pUser_id: nil,
    pName: "Bike from Texas to Alaska",
    pLocation: "North America",
    pDate: "2019-05-31",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Bike+from+Texas+to+Alaska/Bike+from+Texas+to+Alaska+highlight.jpg",
    pDescription: "Ride a bicycle 4,000 miles over 70 days from Austin, TX to Anchorage, AK. See North America from a new perspective and spend nights in host homes or camping in the wilderness",
    pActivities: ["Biking", "White water rafting", "Hiking", "Camping", "Swimming"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Bike+from+Texas+to+Alaska/IMG_3301.JPG", 
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Bike+from+Texas+to+Alaska/IMG_2484.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Bike+from+Texas+to+Alaska/IMG_20190628_225705.jpg", 
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Bike+from+Texas+to+Alaska/IMG_20190602_112426.jpg", 
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Bike+from+Texas+to+Alaska/IMG_1762.JPG", 
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Bike+from+Texas+to+Alaska/IMG_1294.JPG", 
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Bike+from+Texas+to+Alaska/IMG_1230.JPG", 
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Bike+from+Texas+to+Alaska/IMG_0649.jpeg", 
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Bike+from+Texas+to+Alaska/IMG_0472.JPG", 
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Bike+from+Texas+to+Alaska/IMG_0109.JPG", 
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Bike+from+Texas+to+Alaska/69574860_2176508975791317_5548187767416029184_n.jpg", 
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Bike+from+Texas+to+Alaska/67428810_1377428662414576_3819899898237550592_n.jpg",  
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Bike+from+Texas+to+Alaska/67125635_2583322765021177_1912780869437751296_n.jpg", 
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Bike+from+Texas+to+Alaska/20190805_143154.jpg", 
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Bike+from+Texas+to+Alaska/20190705_114058.jpg",  
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Bike+from+Texas+to+Alaska/20190628_103339.jpg", 
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Bike+from+Texas+to+Alaska/20190617_094523.jpg", 
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Bike+from+Texas+to+Alaska/20181117_122712.jpg",
    ],
    pItineraries: 
    [
        "Day 0-9: Austin, TX -> Whichita, KS",
        "By this time you've put in over 2,000 training miles and spent countless hours on your bike, but 
        regardless of the time you've spent training, you know that nothing can prepare you for this journey except actually starting 
        the journey. These firt ten days of the trip will be challenging because you are getting used to your team dynamic, the nomadic 
        lifestyle, and just being generally exhuasted all the time from biking. Each night you will be staying in host homes, churches, 
        schools or camping. The very first day will be the hottest of the entire summer and the 10th day will be one of the windiest, 
        but the entire time you will be on top of the world becuase what you have been imagining in your head for over a year and a 
        half is finally becoming a reality. You're headed to Alaska... on a bicycle!",

        "Day 10-19: Whichita, KS -> Estes Park, CO",    
        "Even though you have been training on the bike for the past year, the first ten days has given you a new appreciation for 
        biking because you realize that even though you're going a fraction of the speed of a car, you can see more on the bike than
        you ever will in the car because you can see details that you wouldnt see when you zip by in a car. The first few days after 
        Whichita, KS will put you to the test. The winds will be brutal, the smell of the cow slaughter houses will be rancid, and 
        you will occasionally be sprayed with cow urine when the cattle trucks pass you. Kansas will take a toll on you and your team. 
        Keep fighting. It wont last forever. The plains will slowly turn into rolling hills and once you reach the Colorado border you 
        will feel a burst of energy. NOw comes a different type of hard - elevation. Colorado is beautiful and you will meet some amazing
        hosts throughout the state who will encourage you along your journey. Your first mountain pass climb to Estes Park and lack of cell 
        service will cause chaos and some flaring tempers among your team, but at the end of the day, you will all be closer to each other.",

        "Day 20-29: Estes Park, CO -> West Yellowstone, WY", 
        "These few days will teach you to be resilient, be aware of and adaptive to your teammates' needs, and to be more flexible with 
        plan changes. You will learn that everybody has good and bad days and sometimes it is necessary for you to step up and take action, but 
        other times it might be better for you to take a backseat and follow along. Colorado and Utah hold in store for you some intense 
        climbs, exhilarating descents, and nasty weather. Sleep in an authentic teepee on a host's ranch land, see Yellowstone National 
        Park, and explore Salt Lake City, Jackson Hole, and and other cities along the way.",

        "Day 30-39: West Yellowstone, WY -> Glacier Nat. Park, MT", 
        "Montana is a big state and it'll pretty much take you all ten of these days to cross it. Spend some time exploring Glacier National 
        Park on a white water rafting trip in glacial temperature rivers. You'll be biking by massive canola fields filled with yellow flowers and 
        mountains in the background like a scene from The Sound Of Music. Spend your free time doing activities like fishing and cook up whaterever 
        you catch for dinner, lighting fireworks for 4th of July, or playing footsol in a gym that is hosting your team.",

        "Day 40-49: Glacier Nat. Park, MT -> Smithers, British Columbia", 
        "British Columbia will be the most beautiful and most challenging section of the ride. There will be a five day stretch of freeing 
        temperatures, rain and hail, and extremely rugged and bumpy roads all at the same time. You'll also have plenty of memorable host 
        experiences throughout British Columbia. Have a Nerf war with a church youth group, try moose meat, and take in the memorable views 
        at Banff and Jasper National Parks. Your longest day will be during this stretch - 144 miles! Oh and you better learn to love Clif bars, 
        bread, and nutella because thats all you'll be eating for a few days straight.",

        "Day 50-59: Smithers, British Columbia -> Whitehorse, YT", 
        "Soon your team will be meeting up with two other teams that you started the journey with but took different routes - one through the Midwest and the other along the 
        west coast. Your team dynamic has grown and shifted into a tight knit group of 27 people over the last 60 days and you're a bit 
        nervouse to be meeting up with two other teams of the same size becuase ou worry it might change the group dynamic, but at the same 
        time, you are excited to see your friends that you trained with before the journey began. When you reunite with the entire team 
        catch up on stories and hear about their experiences that both contrast and parallel your own.",

        "Day 60-70: Whitehorse, YT -> Anchorage, AK", 
        "The final ten days are some of the most incredible days of the journey because you are surrounded by everybody you trained or over a 
        year and a half with, and you are all just days away from accomplishing this incredible task you've put your minds to. At the same 
        time though, you don't want it to end. A part of you wants it to go on forever. Over the past 70 days you have been surrounded by your 
        close friends, you have seen incredible sights across the continent, you have met amazing strangers who have hosted your team in 
        their own homes, and you have learned a lot about yourself along the way. When you arrive in Anchorage, AK, the end of your journey, 
        look back on the most incredible experience of your life and then look forward to the next goal that you will pursue, whatever that may be.",
    ]
)

#Rock Climbing and Rafting Overnight
Entry.new(
    pUser_id: nil,
    pName: "Rock Climbing and Rafting Overnight",
    pLocation: "Vail, Colorado",
    pDate: "2022-07-04",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Rock+Climbing+and+Rafting+Overnight/Rock+Climbing+and+Rafting+Overnight+highlight.jpg",
    pDescription: "Camp in remote territory and conquer your fear of heights while climbing towering cliffs for two days",
    pActivities: ["Rock climbing", "Camping", "White water rafting"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Rock+Climbing+and+Rafting+Overnight/IMG_5344 (1).jpg", 
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Rock+Climbing+and+Rafting+Overnight/IMG_5330.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Rock+Climbing+and+Rafting+Overnight/IMG_5319.jpg", 
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Rock+Climbing+and+Rafting+Overnight/IMG_5316.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Rock+Climbing+and+Rafting+Overnight/IMG_5313.jpg", 
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Rock+Climbing+and+Rafting+Overnight/campfire_field.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Rock+Climbing+and+Rafting+Overnight/3463D1AC-.JPG",
    ],
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

#Guatemala Volcano Experience
Entry.new(
    pUser_id: nil,
    pName: "Guatemala Volcano Hike",
    pLocation: "Guatemala",
    pDate: "2023-02-18",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Guatemala+Volcano+Experience/Guatemala+Volcano+Experience+highlight.JPG",
    pDescription: "Climb an active volcano, explore Antigua and Panajachel, and experience Lake Atitlan from thousands of feet up while paragliding",
    pActivities: ["Hiking", "Camping", "Paragliding"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Guatemala+Volcano+Experience/G0016428.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Guatemala+Volcano+Experience/IMG_0034.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Guatemala+Volcano+Experience/IMG_0232.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Guatemala+Volcano+Experience/IMG_0283.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Guatemala+Volcano+Experience/IMG_0308.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Guatemala+Volcano+Experience/IMG_0365.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Guatemala+Volcano+Experience/IMG_6080.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Guatemala+Volcano+Experience/IMG_6085.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Guatemala+Volcano+Experience/IMG_6086.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Guatemala+Volcano+Experience/IMG_6136.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Guatemala+Volcano+Experience/IMG_6150.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Guatemala+Volcano+Experience/IMG_9942.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Guatemala+Volcano+Experience/PXL_20230220_010142015_2.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Guatemala+Volcano+Experience/PXL_20230221_151011403.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Guatemala+Volcano+Experience/PXL_20230221_221336327.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Guatemala+Volcano+Experience/volcano.jpg",
    ],
    pItineraries: 
    [
        "Day 1",
        "Take a 1.5 hour Uber from the airport in Guatemala City to Antigua to meet up with the rest of your group. Drop your bags 
        off at your Airbnb and get to exploring! Visit Parque Central, El ChocoMuseo, Santa Catalina Arch, and do a short hike to 
        Cerro de la Cruz for a great view overlooking Antigua and its surrounding volcanoes. After the hike, go for dinner at Frida's. 
        Rest up tonight as your hike tomorrow morning will be a real challenge!",

        "Day 2", 
        "Wake up early to meet your volcano tour guides at Wicho and Charlies at 7am. Collect gear and pack your bags at the meeting 
        location before taking shuttles to the base of Volcan Acatenango. Begin the 5 hour, 5,000 ft hike to basecamp near the summit. 
        Along the way, you can feed and pet many wild dogs that live on the mountain. They are acustomed to human interaction and are 
        very friendly. Throughout the hike, the terrain will transition from open farmland to rainforest-like trails with dense fog 
        setting in quickly. Once you get to basecamp, the clouds will disperse and you will be surprised with a magnificent view of 
        Volcan Fuego erupting right in front of you, and it will be unlike anything you have ever seen before. Take a quick 30 minute 
        break before packing a daybag with headlamps and warm clothes. You'll be hiking for 2 more hours to get to the Volcan Fuego 
        ridge where the eruptions can be seen up close. As you climb over the final ridge, tbe volcano will violently release massive 
        amounts of lava hundreds of feet into the night sky, and you will be staring in awe. Fear that you are not far enough away will 
        quickly set in but after the lava falls to the ground you will become more comfortable. Wait on the ridge for another hour to 
        catch as many eruptions as possible and enjoy the view over the cities in the distance. The raging winds and freezing temperatres 
        discourage you from staying but you will never experience anything as incredible as this night again so you force yourself to 
        stay as long as possible. Make the 2 hour trek back to basecamp for a warm dinner and campfire where you can continue to watch 
        Fuego erupt throughout the night.",

        "Day 3",
        "At basecamp, you will be able to see the sunrise from above the clouds, and it will be one of the most magestic sunrises you 
        will ever see. After breakfast, pack your bags and head back down Acatenango. The hike down takes about half the time it takes 
        to get up (even less if you trail run it). Congratulate yourself and the rest of your group on completing a challenging hike, 
        then Say goodbye to your tour guides and take a shuttle back to the Wicho and Charlie's headquarters in Antigua. Grab lunch near 
        the headquarters then take a 2 hour Uber to Panajachel (you might need to do some negotiating with your driver for this one). Once 
        in Panajachel, hop on a public boat to Santa Cruz where you will stay at your first hostel, La Iguana Perdida. Take a seat for 
        family dinner and trivia soon after you arrive and make some new friends at your table (if your team name is good you can win 
        some shots!).", 

        "Day 4",
        "Sleep in at the hostel today to catch up on sleep since you didnt get much the night before on the mountain. After breakfast 
        at the hostel, grab a boat back to Panajachel to explore the city before meeting up for your paragliding reservations at 1:30. 
        Use this opportunity to practice your spanish at the local markets and shops. Take a van ride up to the cliffs over Lake Atitlan 
        and hike down a dirt road to get to your launching point for paragliding. Saddle up and you're off! Take in the stunning views 
        and hold on tight as you do some flips in the air thousands of feet above the lake. After the ride back into town, grab some dinner 
        and gelato before racing to catch the last public boat back to Santa Cruz for the night. Once back at the hostel, make some more 
        friends when you spontaneously join a percussion circle beating away into the night.",

        "Day 5",
        "Your last day in Guatemala :( Say goodbye to half of your group and head back to guatemala city to catch your flight home. Think 
        back on how much you have seen and done over the past 5 days and how much you wish you still had time to do. You'll have to come 
        back eventually for it!"
    ]
)

#West Texas Roadtrip
Entry.new(
    pUser_id: nil,
    pName: "West Texas Roadtrip",
    pLocation: "Big Bend NP, Guadalupe Mtns. NP",
    pDate: "2017-03-04",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/West+Texas+Roadtrip/West+Texas+Roadtrip+highlight.JPG",
    pDescription: "Go on a roadtrip in western Texas to go backpacking in Big Bend, climb the highet point in Texas, and surf down sand dunes",
    pActivities: ["Backpacking", "Camping", "Sand surfing"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/West+Texas+Roadtrip/20170305_105741_HDR.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/West+Texas+Roadtrip/20170305_135431_HDR.jpg	",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/West+Texas+Roadtrip/20170305_160506_HDR.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/West+Texas+Roadtrip/20170305_171605_HDR.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/West+Texas+Roadtrip/20170308_154046.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/West+Texas+Roadtrip/IMG_4438.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/West+Texas+Roadtrip/IMG_6526.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/West+Texas+Roadtrip/IMG_6530.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/West+Texas+Roadtrip/IMG_6793.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/West+Texas+Roadtrip/IMG_6911.JPG",
    ],
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

#Buffalo River Backpacking
Entry.new(
    pUser_id: nil,
    pName: "Buffalo River Backpacking",
    pLocation: "Buffalo River, Arkansas",
    pDate: "2018-03-14",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Buffalo+River+Backpacking/Buffalo+River+Backpacking+highlight.jpg",
    pDescription: "Spend a few nights exploring the Arkansas backcountry",
    pActivities: ["Backpacking"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Buffalo+River+Backpacking/river.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Buffalo+River+Backpacking/IMG_0347.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Buffalo+River+Backpacking/IMG_5611.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Buffalo+River+Backpacking/IMG_5674.JPG",
    ],
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

#Hawaii Multisport
Entry.new(
    pUser_id: nil,
    pName: "Hawaii Multisport",
    pLocation: "Big Island of Hawaii",
    pDate: "2022-06-14",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Hawaii+Multisport/Hawaii+Multisport+highlight.jpg",
    pDescription: "See Volcano National Park, black sand beaches, and explore the less traveled areas of Hawaii's Big Island by bike, foot, and kayak",
    pActivities: ["Biking", "Kayaking", "Hiking", "Snorkelling"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Hawaii+Multisport/IMG_3987.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Hawaii+Multisport/IMG_3992.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Hawaii+Multisport/IMG_3996.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Hawaii+Multisport/IMG_4002.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Hawaii+Multisport/IMG_4007.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Hawaii+Multisport/IMG_4017.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Hawaii+Multisport/turtle.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Hawaii+Multisport/IMG_4032.jpg",
    ],
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

#Boundary Water Canoeing
Entry.new(
    pUser_id: nil,
    pName: "Boundary Water Canoeing",
    pLocation: "Minnesota Boundary Waters",
    pDate: "2016-03-20",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Boundary+Water+Canoeing/Boundary+Water+Canoeing+highlight.JPG",
    pDescription: "Travel 50 miles canoeing, portaging, and camping out under the stars in the Minnesota wilderness",
    pActivities: ["Canoeing", "Fishing", "Cliff jumping"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Boundary+Water+Canoeing/IMG_2485.JPG	",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Boundary+Water+Canoeing/IMG_2926.JPG",
    ],
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

#Climb Mt. Democrat
Entry.new(
    pUser_id: nil,
    pName: "Climb Mt. Democrat",
    pLocation: "Decalibron Loop, Colorado",
    pDate: "2022-06-11",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Climb+Mt.+Democrat/Climb+Mt.+Democrat+highlight.jpg",
    pDescription: "Camp at the base of Mt. Democrat (14,155ft) and hike 2,000ft of elevation to the summit in the early morning",
    pActivities: ["Hiking", "Camping"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Climb+Mt.+Democrat/IMG_4246.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Climb+Mt.+Democrat/mountain.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Climb+Mt.+Democrat/PXL_20220611_042959600.NIGHT.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Climb+Mt.+Democrat/PXL_20220611_132722359.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Climb+Mt.+Democrat/road.JPG",
    ],
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

#Puerto Rico Exploring
Entry.new(
    pUser_id: nil,
    pName: "Puerto Rico Exploring",
    pLocation: "Puerto Rico",
    pDate: "2022-06-27",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Puerto+Rico+Exploring/Puerto+Rico+Exploring+highlight.jpg",
    pDescription: "Check out El Yunque rainforest, Old San Juan, swim in bioluminescent water while stargazing, slide down natural waterslides, and eat some street mangos",
    pActivities: ["Hiking", "Kayaking", "Ziplining", "Swimming"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Puerto+Rico+Exploring/IMG_1080.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Puerto+Rico+Exploring/IMG_1125.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Puerto+Rico+Exploring/IMG_2211.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Puerto+Rico+Exploring/PXL_20220624_165345384.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Puerto+Rico+Exploring/PXL_20220624_175609137.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Puerto+Rico+Exploring/PXL_20220624_215143958.MP.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Puerto+Rico+Exploring/PXL_20220624_220409217.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Puerto+Rico+Exploring/PXL_20220625_230955402.NIGHT.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Puerto+Rico+Exploring/PXL_20220626_030308625.NIGHT.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Puerto+Rico+Exploring/PXL_20220626_180704535.MP.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Puerto+Rico+Exploring/PXL_20220627_184505586.MP.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Puerto+Rico+Exploring/PXL_20220628_165050587.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Puerto+Rico+Exploring/PXL_20220628_171809654.MP.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Puerto+Rico+Exploring/PXL_20220628_220101145.MP.jpg",
    ],
    pItineraries: 
    [
        "Day 1",
        "Start your Puerto Rico trip with some drinks and lunch at a beach bar. Afterwards jump in on some pickup volleyball and
        partake in wrestlemania with your travel companions in the ocean. After enjoying the beach head over to Old San Juan to explore 
        and watch the sunset while sitting on the walls of Catillo San Felipe del Morro. See Puerto Rico's nightlife at La Placita, a 
        group of streets with bars whos' parties extend out onto the streets.",

        "Day 2", 
        "Drive about 1.5 hours inland to ride 'The Monster' zipline course through the jungle at Toro Verde Adventure Park. You'll see 
        incredible views of the jungle from above and zip right by the tips of trees, which are seemingly close enough to reach out 
        and touch. After the ziplines, head back to San Juan and try some local fruits such as Guanabana or Passionfruit. Grab dinner 
        in San Juan and play a surprise game of pickup basketball on the court that appeared in the 'Despacito' music video. After a 
        fun and unexpected workout, head back to your Airbnb and introduce your travel companions to the TV show 'Scrubs' by watching 
        the musical episode together.",

        "Day 3", 
        "Take Angelito Trail to reach a river within the only natural rainforest in the United States, El Yunque. After the hike, 
        visit Las Pailas, a naturally formed rock water slide and swimming hole. Climb and walk on boulders upstream of the 
        waterslide to explore less traveled parts of the jungle. Since you've been swimming in the river and are only wearing a swim 
        suit, do your exploring in just shorts and no shoes or shirt and it will feel so freeing! On the drive out of Las Pailas be
        sure to grab some fresh mangos hanging from the trees along the side of the road to snack on. For dinner, head to los Kioskos 
        de Luquillo, a string of food shops along the beach. Try no to spend too much time at dinner becuase you have an appointemnt 
        for bio bay kayaking in Fajardo! A bio bay contains water that illuinates when something moves through it and at night it is 
        extremely beautiful. To get to the bio bay you will be kayaking through thick mangroves at dusk so bring your bug spray!",

        "Day 4",
        "Return to El Yunque today to see some different trails. Climb a tower for a nice view and hike a short trail to a waterfall. 
        From El Yunque, head west along the north side of Puerto Rico to Cuevo del Indio, a cave system along the bech which was once 
        lived in many centuries ago. after climbing into the caves and taking in the views, head to Parguera on the south west corner 
        of the island to go bio bay swimming (kayaking just wasnt enough). You wont want to miss this becuase it will be one of the most
        memorable experiences of the entire trip. You will be swimming in an inlet connecting to the ocean with nobody around for miles. 
        Watch the water glow around you as you jump in and swim around. Gaze up at the stars as you float in the calm water, hearing nothing 
        but the water muffled sounds of nature.",

    ]
)

#Backpack Long's Peak
Entry.new(
    pUser_id: nil,
    pName: "Backpack Long's Peak",
    pLocation: "Rocky Mountain Nat. Park",
    pDate: "2022-08-06",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Backpack+Longs+Peak/highlight_longs.jpg",
    pDescription: "Spend two days climbing Long's Peak (14,259ft), Colorado's deadliest 14er. Spend a night in Boulderfield before your summit bid through the keyhole the next morning",
    pActivities: ["Backpacking", "Climbing"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Backpack+Longs+Peak/hiking.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Backpack+Longs+Peak/IMG_1169.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Backpack+Longs+Peak/IMG_3838.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Backpack+Longs+Peak/IMG_3849.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Backpack+Longs+Peak/IMG_5423.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Backpack+Longs+Peak/IMG_5431.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Backpack+Longs+Peak/IMG_5447 (1).jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Backpack+Longs+Peak/IMG_5450.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Backpack+Longs+Peak/view.jpg",
    ],
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

#Canaveral Nat. Seashores Canoeing
Entry.new(
    pUser_id: nil,
    pName: "Canaveral Nat. Seashores Canoeing",
    pLocation: "Canaveral Nat. Seashores, Florida",
    pDate: "2022-04-15",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Canaveral+Nat.+Seashores+Canoeing/Canaveral+Nat.+Seashores+Canoeing+highlight.jpg",
    pDescription: "Throw all your gear in a canoe and paddle out amongst dolphins to a secluded island to spend the night next to a roaring campfire",
    pActivities: ["Canoeing", "Camping"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Canaveral+Nat.+Seashores+Canoeing/20220415_214112_Original.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Canaveral+Nat.+Seashores+Canoeing/IMG_4840.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Canaveral+Nat.+Seashores+Canoeing/IMG_4852.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Canaveral+Nat.+Seashores+Canoeing/IMG_4853.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Canaveral+Nat.+Seashores+Canoeing/IMG_4856.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Canaveral+Nat.+Seashores+Canoeing/Resized_20220415_164622.JPEG	",
    ],
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

#Biking up Pikes Peak
Entry.new(
    pUser_id: nil,
    pName: "Biking up Pikes Peak",
    pLocation: "Pikes Peak, Colorado",
    pDate: "2022-05-28",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Biking+up+Pikes+Peak/Biking+up+Pikes+Peak+highlight.jpg",
    pDescription: "Grab your roadbike and fight the urge to quit on this grueling 17 mile and 7,000ft elevation gain bike ride up Pikes Peak (14,115ft)",
    pActivities: ["Biking", "Questioning your life choices"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Biking+up+Pikes+Peak/IMG_5075.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Biking+up+Pikes+Peak/IMG_5081.jpg	",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Biking+up+Pikes+Peak/IMG_5083.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Biking+up+Pikes+Peak/IMG_5087.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Biking+up+Pikes+Peak/IMG_5090.jpg", 
    ],
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

#Backpacking Four Pass Loop
Entry.new(
    pUser_id: nil,
    pName: "Backpacking Four Pass Loop",
    pLocation: "Maroon Bells, Colorado",
    pDate: "2020-08-11",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Backpacking+Four+Pass+Loop/Backpacking+Four+Pass+Loop+highlight.jpg",
    pDescription: "Climb four different mountain passses, swim in frigid mountain lakes, and enjoy good company on this 30 mile loop near Aspen, Colorado",
    pActivities: ["Backpacking", "Swimming"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Backpacking+Four+Pass+Loop/colorado.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Backpacking+Four+Pass+Loop/FPL1.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Backpacking+Four+Pass+Loop/FPL2.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Backpacking+Four+Pass+Loop/FPL3.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Backpacking+Four+Pass+Loop/FPL4.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Backpacking+Four+Pass+Loop/FPL5.jpg",
    ],
    pItineraries: 
    [
        "Day 1",
        "Start this 27 mile loop at Maroon Snowmass Trailhead. Keep an eye out for wildlife as moose are commonly seen in this area. 
        Once you reach Maroon Lake, setup camp for the night and enjoy your first night in Colorado by taking in the vast night sky 
        which is cluttered with stars.",

        "Day 2", 
        "You'll start feeling the the effects of elevation right at the beginning of the day as you make your way up Buckskin pass. 
        Buckskin will be the first of four passes that you will hike over on this lopp. It won't be easy but you will certainly 
        feel accomplished by the time you get to camp tonight at Snowmass Lake. Go for a swim in Snowmass Lake if you want to 
        experience glacier water tmeperatures.  ",

        "Day 3", 
        "Attmept to conquer the second of four mountain passes today - Trail Rider Pass. Entertain yourselves by playing some Lord of 
        the Rings soundtrack music since it fits with the landscape. Descend into a valley after this pass and follow a stream for a 
        few miles until you find a good spot for camp.",

        "Day 4",
        "Today is your last day of hiking and you'll be completeing the loop. To do this you will climb over the last two mountain 
        passes - Frigid Air Pass and West Maroon Pass. This will be the most challenging day in terms of legnth and elevation gain. 
        After you finish the hike, celebrate with a cheeseburger, or two, in Aspen, CO, which is not far from the trailhead."
    ]
)

#Buckcreek Pass Loop Backpacking
Entry.new(
    pUser_id: nil,
    pName: "Buckcreek Pass Loop Backpacking",
    pLocation: "Leavenworth and Seattle, Washington",
    pDate: "2020-08-23",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Buckcreek+Pass+Loop+Backpacking/Buckcreek+Pass+Loop+Backpacking+highlight.jpg",
    pDescription: "Buy plane tickets one day in advance for this spantaneous 40 mile backpacking trip with some of the most gorgeous views you'll ever see. Explore Seattle after the hike",
    pActivities: ["Backpacking", "Exploring Seattle"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Buckcreek+Pass+Loop+Backpacking/IMG_0021.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Buckcreek+Pass+Loop+Backpacking/IMG_0146.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Buckcreek+Pass+Loop+Backpacking/IMG_3009 (1).jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Buckcreek+Pass+Loop+Backpacking/IMG_9188.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Buckcreek+Pass+Loop+Backpacking/IMG_9211.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Buckcreek+Pass+Loop+Backpacking/IMG_9249.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Buckcreek+Pass+Loop+Backpacking/IMG_9296.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Buckcreek+Pass+Loop+Backpacking/IMG_9308.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Buckcreek+Pass+Loop+Backpacking/IMG_9332.jpg	",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Buckcreek+Pass+Loop+Backpacking/IMG_9360.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Buckcreek+Pass+Loop+Backpacking/IMG_9577.jpg",
    ],
    pItineraries: 
    [
        "Day 1",
        "Head over to the Buckcreek Pass Loop trailhead straight from the airport to try to get a few miles in before sunset. Right 
        away you'll be greeted with beautiful scenery and lucious green forests. Make sure to rent a car that can handle tough dirt 
        roads to get to the trailhead. Hike in about 3 miles from the dirt parking lot and setup your tent in the dark once you find 
        a suitable spot.",

        "Day 2", 
        "Today you'll be hiking through beautiful green valleys, up and over spider glacier, and through forests. The hike up Spider 
        glacier is tough but the way down the other side is a blast. With all the snow and steep slopes, you can slide down on your butt, 
        just watch out for rocks.",

        "Day 3", 
        "The trails you cross oday will remind you of the flower fields from \"The Sound of Music\". The famous Image lake is a small 
        detour off of the main trail, but it is totally worth the extra mileage to see a perfect reflection of Glacier Peak in the 
        distance.",

        "Day 4", 
        "Finish the 40 mile loop, wash yourself off in a freezing mountain river, and head back to an Airbnb in Seattle. Explore seattle 
        and visit an old friend who live in Seattle for the day.",
    ]
)

#After work rock climbing
Entry.new(
    pUser_id: nil,
    pName: "After work rock climbing",
    pLocation: "Clear Creek Canyon, Colorado",
    pDate: "2022-10-05",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/After+work+rock+climbing/After+work+rock+climbing+highlight.jpg",
    pDescription: "To get to this climbing crag, you'll need to climb a tree, hook into a cable, and pull yourself across a river. Make sure you bring a headlamp since the sun is going down",
    pActivities: ["Rock climbing"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/After+work+rock+climbing/IMG_5690.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/After+work+rock+climbing/IMG_5719.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/After+work+rock+climbing/IMG_6187.jpg",
    ],
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

#Great Sand Dunes Day Trip
Entry.new(
    pUser_id: nil,
    pName: "Great Sand Dunes Day Trip",
    pLocation: "Great Sand Dunes Nat. Park",
    pDate: "2023-01-15",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Great+Sand+Dunes+Day+Trip/Great+Sand+Dunes+Day+Trip+highlight.jpg",
    pDescription: "Experience a real life game of Settlers of Catan as you explore the park's sand dunes, mountains, forests, plains, and frozen waterfalls all in one day",
    pActivities: ["Hiking"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Great+Sand+Dunes+Day+Trip/IMG_5955.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Great+Sand+Dunes+Day+Trip/IMG_5958.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Great+Sand+Dunes+Day+Trip/IMG_5962.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Great+Sand+Dunes+Day+Trip/IMG_5963.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Great+Sand+Dunes+Day+Trip/IMG_5969.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Great+Sand+Dunes+Day+Trip/IMG_8820.JPG",
    ],
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

#Weekend in New York City
Entry.new(
    pUser_id: nil,
    pName: "Weekend in New York City",
    pLocation: "New York, New York",
    pDate: "2021-12-10",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Weekend+in+New+York+City/Weekend+in+New+York+City+highlight.jpg",
    pDescription: "Ice skate in Brooklyn, get a tour of the 3rd World Trade Center, discover an underground speakeasy, and win an extremely competitive game of bar trivia with your team",
    pActivities: ["Ice skating", "Walking", "Nightlife"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Weekend+in+New+York+City/IMG_0513.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Weekend+in+New+York+City/IMG_3574.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Weekend+in+New+York+City/IMG_4594.jpg", 
    ],
    pItineraries: 
    [
        "Day 1",
        "You've already seen all the touristy stuff in New York City so this trip is all about doing the stuff locals do. For your 
        first day in the city, catch up with some friends over lunch on the lower east side. Do some exploring afterwards and find 
        yourself in Chinatown for dinner. After dinner, check out a cool underground speakeasy. Go back to your friends apartment 
        in Brooklyn and climb to the roof for a beautiful view of the Manhattan skyline.",

        "Day 2",
        "Time to cross some stuff off your bucket list. Go ice skating on the outdoor rink in the middle of the city at Prospect 
        Park (Central park is closed today :( ). Prosect Park is just as cool as Central Park though, and ice skating in the 
        middle of it is an awesome experience. You're in New York City in December so... how could you not visit time square and 
        rockefeller for a christmas light show tonight.",
        
        "Day 3", 
        "For your last day in New York, cross off one more thing on your bucket list and see the famous Brooklyn Bridge picture 
        spot in DUMBO. Start with breakfast in the area and then walk over to the picture spot. Walk accross the Brooklyn Bridge 
        to the world trade center area. This time you wont just be seeing the tourist part of it, you'll be getting a tour of an 
        office on the 60th floor of the 3rd world trade center - a whole new view of the city! Tonight assemble your trivia team 
        and head to a local bar for trivia. This isn't just any trivia though... be prepared for physical activities! After a long 
        fought battle of wits, claim the 1st place prize - a bottle of champagne!"
    ]
)

#Italy
Entry.new(
    pUser_id: nil,
    pName: "Italy",
    pLocation: "Italy",
    pDate: "2018-05-01",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Italy/Italy+highlight.JPG",
    pDescription: "Spend a month in Italy traveling to Cinque Terre, the Alps, Florence, Rome, and Milan. Take a cooking class, swim in the Mediterranean, and hike along the coast",
    pActivities: ["Swimming", "Hiking", "Cooking", "Nightlife"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Italy/IMG_5967.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Italy/IMG_6011.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Italy/IMG_6065.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Italy/IMG_6078.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Italy/IMG_6199.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Italy/IMG_6231.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Italy/IMG_6247.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Italy/IMG_6285.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Italy/IMG_6667.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Italy/italy_hike.jpg",
    ],
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

#Alaska Multisport
Entry.new(
    pUser_id: nil,
    pName: "Alaska Multisport",
    pLocation: "Anchorage, Kenai Fjords, Seward, AK",
    pDate: "2019-08-10",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Alaska+Multisport/Alaska+Multisport+highlight.jpg",
    pDescription: "Take in magnificent views of a pristine wilderness and wildlife at Kenai Fjords Nat. Park, go fishing on the beach, kayak in the bay, and hike on Exit Glacier",
    pActivities: ["Kayaking", "Hiking", "Wildlife watching", "Fishing"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Alaska+Multisport/IMG_1814.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Alaska+Multisport/IMG_1842.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Alaska+Multisport/IMG_1849.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Alaska+Multisport/IMG_1923.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Alaska+Multisport/IMG_1935.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Alaska+Multisport/IMG_1962.jpg", 
    ],
    pItineraries: 
    [
        "Day 1",
        "Start the tri with a boat ride to view Kenai Fjords National Park, glaciers, and plenty of wildlife. You'll even see 
        some glacier chunks falling into the water which is a cool sight.",

        "Day 2", 
        "Today you'll be going for a guided hike on Exit Glacier (fun fact: Bear Grylls took President Obama here for his TV show). 
        For this hike you'll be wearing spikes and a helmet to safely traverse the glacier.",

        "Day 3", 
        "Take a guided kayak tour through the Alaskan wilderness and a plethora of beautiful views and wildlife sightings. Gain 
        a better understanding of the Alaskan wilderness as you listen to your guide throughout the tour.",
    ]
)

#Midnight 14er Hike
Entry.new(
    pUser_id: nil,
    pName: "Midnight 14er Hike",
    pLocation: "Mt. Quandary (14,271 ft)",
    pDate: "2022-09-24",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Midnight+14er+Hike/Midnight+14er+Hike+highlight.jpg",
    pDescription: "Enjoy the peaceful and quiet night as you gaze up at the stars on the trek up Mt. Quandary (14,271 ft). If you're lucky, a mountain goat will walk right up to you and say hi",
    pActivities: ["Hiking", "Star gazing"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Midnight+14er+Hike/goat.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Midnight+14er+Hike/IMG_4659.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Midnight+14er+Hike/IMG_4687.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Midnight+14er+Hike/IMG_5650.jpg",
    ],
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

#Yosemite Backpacking and San Francisco
Entry.new(
    pUser_id: nil,
    pName: "Yosemite Backpacking and San Francisco",
    pLocation: "Yosemite Nat. Park, San Francisco, California",
    pDate: "2015-06-01",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Yosemite+Backpacking+and+San+Francisco/Yosemite+Backpacking+and+San+Francisco+highlight.JPG",
    pDescription: "Backpack through Yosemite's beautiful wilderness, walk across cloud's rest, and top off the trip with a climb up Half Dome. Afterwards, travel to San Francisco to see Alcatraz",
    pActivities: ["Backpacking"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Yosemite+Backpacking+and+San+Francisco/686.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Yosemite+Backpacking+and+San+Francisco/733.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Yosemite+Backpacking+and+San+Francisco/754.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Yosemite+Backpacking+and+San+Francisco/SAM_3385.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Yosemite+Backpacking+and+San+Francisco/SAM_3389 - Copy.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Yosemite+Backpacking+and+San+Francisco/SAM_3416.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Yosemite+Backpacking+and+San+Francisco/SAM_3418 - Copy.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Yosemite+Backpacking+and+San+Francisco/SAM_3516.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Yosemite+Backpacking+and+San+Francisco/SAM_3529.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Yosemite+Backpacking+and+San+Francisco/SAM_3538.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Yosemite+Backpacking+and+San+Francisco/SAM_3588.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Yosemite+Backpacking+and+San+Francisco/SAM_3641.JPG",
    ],
    pItineraries: 
    [
        "Day 1",
        "Ever since you saw a picture of Yosemite on TV, you've been wanting to see it in person, and today is the day! See some 
        incredible views of Yosemite Valley as you're driving into the park from the Tunnel View overlook as well as Glacier Point. 
        You will even see your first bear on side of the road while you're driving into the park. Stay in a small cabin in the valley 
        for your first night in the park. Organize your gear for tomorrow morning's backpacking trip before you go to bed.",

        "Day 2", 
        "Enjoy the sights and smells of Yosemite's backcountry trail system while you hike today. Make sure to admire the giant pine 
        cones along the trail and at camp. Setup your tents and enjoy a good nights sleep after a difficult hike.",

        "Day 3", 
        "Today's theme is 'conquering your fear of heights'. Start the day off with a hike on top of Clouds Rest, a narrow stretch of 
        rock at the top of a granite dome with steep drops on either side. After making it across Clouds Rest, head towards Half Dome 
        for your next challenge. The climb up Half Dome is adrenaline inducing at times and if you can overcome your fear of heights, 
        it is tottally worth it. You will be climbing straight up the side of the granite dome holding onto nothing but a steel cable 
        bolted to the rock. The views at the top are breathtaking and unforgettable.",

        "Day 4", 
        "After your backpacking trip, head over to San Francisco to do some exploring, take a tour of Alcatraz, and see the Golden 
        Gate Bridge.",
    ]
)

#Eagle Rock Loop Backpacking
Entry.new(
    pUser_id: nil,
    pName: "Eagle Rock Loop Backpacking",
    pLocation: "Ouachita Mountains, Arkansas",
    pDate: "2017-06-06",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Eagle+Rock+Loop+Backpacking/Eagle+Rock+Loop+Backpacking+highloght.JPG",
    pDescription: "Experience rugged Arkansas on this 28 mile steep up and down loop in the Ouachita Mountains",
    pActivities: ["Backpacking"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Eagle+Rock+Loop+Backpacking/IMG_4728.JPG	",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Eagle+Rock+Loop+Backpacking/IMG_4736.JPG	",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Eagle+Rock+Loop+Backpacking/IMG_4760.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Eagle+Rock+Loop+Backpacking/IMG_4770.JPG",
    ],
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

#IRONMAN Indiana
Entry.new(
    pUser_id: nil,
    pName: "IRONMAN Indiana",
    pLocation: "Muncie, Indiana",
    pDate: "2021-10-02",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/IRONMAN+Indiana/IRONMAN+Indiana+highlight.JPG",
    pDescription: "Travel to the middle of nowehere Indiana to race in Indiana's first full Ironman! Swim 2.4 miles, Bike 112 miles, and run 26.2 miles? Easy right...",
    pActivities: ["Swimming", "Biking", "Running", "Questioning your life choices"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/IRONMAN+Indiana/Capture.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/IRONMAN+Indiana/DSCN4594.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/IRONMAN+Indiana/IMG_0139.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/IRONMAN+Indiana/IMG_2058.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/IRONMAN+Indiana/IMG_2097.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/IRONMAN+Indiana/IMG_2134.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/IRONMAN+Indiana/IMG_4411.jpg",
    ],
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

#Grand Staircase Roadtrip
Entry.new(
    pUser_id: nil,
    pName: "Grand Staircase Roadtrip",
    pLocation: "Grand Canyon, Bryce Canyon and Zion Nat. Parks, Utah",
    pDate: "2017-07-31",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Grand+Staircase+Roadtrip/Grand+Staircase+Roadtrip+highlight.JPG",
    pDescription: "Travel to the Grand Canyon, Bryce Canyon and Zion National Parks. Conquer your fear of hieghts at Zion on the Angle's Landing trail, which is not for the faint of heart.",
    pActivities: ["Hiking"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Grand+Staircase+Roadtrip/IMG_4953.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Grand+Staircase+Roadtrip/IMG_4960.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Grand+Staircase+Roadtrip/IMG_4968.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Grand+Staircase+Roadtrip/IMG_5016.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Grand+Staircase+Roadtrip/IMG_5105.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Grand+Staircase+Roadtrip/IMG_5114.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Grand+Staircase+Roadtrip/IMG_5134.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Grand+Staircase+Roadtrip/IMG_5136.JPG",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Grand+Staircase+Roadtrip/IMG_5138.JPG",
    ],
    pItineraries: 
    [
        "Day 1",
        "Start the roadtrip at the top of whats known as 'The Grand Staircase', a large area west of the Rockies that contains 
        Bryce Canyon, Zion, and Grand Canyon National Parks. Spend the day hiking in Bryce Canyon and admiring the brightly colored 
        rock spires. Spend the night in a cabin and make sure to get enough sleep to wake up early to watch the sunrise over the 
        canyon tomorrow morning.",

        "Day 2", 
        "Wake up early to catch the sunrise over Bryce Canyon before hitting the road towards the North rim of the Grand Canyon 
        (the less traveled rim). Hike part of the North Kaibab trail for most of the day and then spend the night in a cabin 
        right near the rim.",

        "Day 3", 
        "After staying a night on the North rim of the Grand Canyon, head over to Zion National Park. Today you'll be hiking the 
        Narrows, or at least the part that's not closed. This area of the park is pretty busy so the earlier you get there the 
        better.",

        "Day 4", 
        "Today is the day you've been waiting for. The day you climb Angels Landing, a 5.5 mile hike with 1500 ft of elevation gain 
        culminating with a narrow scrambling section, only a few feet wide at times, with a 1000ft drop on either side and nothing to 
        hold onto except a chain bolted to the rock. This is not for the faint of heart but if you complete it, you will remember 
        this hike/climb for the rest of your life!",
    ]
)

#Snow Cave Camping
Entry.new(
    pUser_id: nil,
    pName: "Snow Cave Camping",
    pLocation: "Rocky Mountain Nat. Park",
    pDate: "2023-02-11",
    pHighlightImageURL: "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Snow+Cave+Camping/Snow+Cave+Camping+highlight.jpg",
    pDescription: "Hike in the snowy wonderland of Rocky Mountain National Park. Dig a snow cave and sleep in it overnight",
    pActivities: ["Hiking", "Build a snow cave"],
    pImageURLs: 
    [
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Snow+Cave+Camping/IMG_6022.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Snow+Cave+Camping/IMG_6032.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Snow+Cave+Camping/IMG_6042.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Snow+Cave+Camping/IMG_7489.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Snow+Cave+Camping/PXL_20230211_223856484.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Snow+Cave+Camping/PXL_20230211_224815093.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Snow+Cave+Camping/PXL_20230212_024308388.jpg",
        "https://tripitinerarywebsitephotos.s3.us-west-1.amazonaws.com/Snow+Cave+Camping/PXL_20230212_134940885.jpg", 
    ],
    pItineraries: 
    [
        "Day 1",
        "Arrive at the park in the afternoon and claim your campsite on a first come first served basis. It's early February in the 
        Rocky Mountains so you wont have to fight off to many other campers. Setup camp and then head over to the Glacier Gorge trailhead 
        for a 6 mile hike through the snow to The Loch. Keep an eye out for some Stellar's Jays, blue birds that hang out around this area. 
        Head back to camp after the hike to build a fire and make dinner. After dinner, grab the shovel and start digging yourself a 
        snow cave. If it turns out well maybe you can sleep in it for the night. Snow is actually a great insulator, so the inside of 
        the snow cave is actually significantly warmer than the outside air.",

        "Day 2", 
        "Congratulations, you spent the night in the snow cave and can now check that box off your bucket list! Watch the sunrise from 
        camp and then head out on a short hike to Dream Lake before leaiving the park. Grab some lunch in Estes Park and call it a 
        successful winter campout!",
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


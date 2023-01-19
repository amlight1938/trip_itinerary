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

        # pItineraries.each do |row|
        #     day = row[0]
        #     itin = row[1]
        #     itinerary = Itinerary.create(day_number: day, day_itinerary: itin, trip_id: trip.id)
        #     trip.itineraries << itinerary
        # end

        iteration = 0
        tmp = nil
        pItineraries.each do |row|
            if !is_odd_iteration?(iteration)
                tmp = row
            end
            
            if is_odd_iteration?(iteration)
                itinerary = Itinerary.create(day_number: tmp, day_itinerary: row, trip_id: trip.id)
                trip.itineraries << itinerary
            end

            iteration = iteration + 1
        end
    end

    def is_odd_iteration?(i)
        (i % 2) != 0
    end
end
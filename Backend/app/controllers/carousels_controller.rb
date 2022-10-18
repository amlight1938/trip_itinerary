class CarouselsController < ApplicationController
    def index
        @carousels = Carousel.all
    end
end
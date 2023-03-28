class HeroPowersController < ApplicationController
   
   
    def index 
        hero_power = HeroPower.all
        render json: hero_power, include: :heros, include: :power
    end


    #POST/power/:id
    def create
        hero_power = HeroPower.create!(params.permit(:name, :description))
        render jon: hero_power
    end

end

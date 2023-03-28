class PowersController < ApplicationController

    def index 
        powers = Power.all
        render json: powers, include: :heros
    end

    #Get/powers/:id
    def show
        power = Power.find_by(id: params[:id])
        if power
            render json: power
        else
            render json: {error: "Powers not found"}, status: :not_found
        end
    end

    #POST/power/:id
    def create
        power = Power.create!(params.permit(:name, :description))
        render jon: power, status: :created
    end


    #UPDATE/hero/:id
    def update
        power = Power.find_by(id: params[:id])
        if power
            power.update(param.permit(:name, :description))
            render json: power, status: :accepted
        else
            render jon: {error: "Powers not found"}, status: :not_found
        end
    end
end

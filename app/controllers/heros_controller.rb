class HerosController < ApplicationController

    def index 
        heros = Hero.all
        render json: heros, include: :powers
    end

    #Get/Heros/:id
    def show
        hero = Hero.find_by(id: params[:id])
        if hero
            render json: hero
        else
            render json: {error: "Hero not found"}, status: :not_found
        end
    end

    #POST/hero/:id
    def create
        hero = Hero.create!(params.permit(:name, :super_name))
        render jon: hero, status: :created
    end

   
end

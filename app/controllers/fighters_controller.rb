class FightersController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        @fighter = Fighter.all
        render json: @fighter 
    end

    def show
        @fighter = Fighter.find_by(id: params[:id])
        render json: @fighter
    end



def update
    
    fighter = Fighter.find(params[:id])
    fighter.update(specialty: params[:specialty], streak: params[:streak])
end

def create
    @fighter = Fighter.cerate(fighter_params)
    render json: @fighter
end

end 
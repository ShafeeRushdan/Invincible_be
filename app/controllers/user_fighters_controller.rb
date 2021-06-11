class UserFightersController < ApplicationController
    def index
        @user_fighters = UserFighter.all
        render json: @user_fighters
    end

    def show
        @user_fighter = UserFighter.find_by(id: params[:id])
        render json: @user_fighters
    end

    def update
        user = User.find(params[:id])
        @user_fighter = user.user_fighters.find {|r| r.fighters == params[:fighters].to_i}
        @user_fighter.update(rating: params[:rating],
        highscore: params[:highscore])
        render json: Review.all
    end

    def create
        @user_fighter = UserFighter.create(user_fighter_params)
        render json: @user_fighter
    end

    

    private

    def user_fighter_params
        params.permit(:highscore)
    end
end




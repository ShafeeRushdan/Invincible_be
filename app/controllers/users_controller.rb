class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find_by(id: params[:id])
        render json: @user
    end

    def create 
        @user = User.create(name: params[:name], password: params[:password], streak: 0, profile: params[:profile] )
       
       
        render json: @user
    end

    def update
        user = User.find(params[:id])
        
        if (user.streak == nil) 
            user.update(streak: 0)
        else
            user.update(streak: params[:streak])

        end

     
       
       
        render json: user
    end

    def remove
        user = User.find(params[:id])
        user.destroy
        
        render json: User.all
    
       
          
        
      end




end 


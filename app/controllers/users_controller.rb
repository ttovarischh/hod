class UsersController < ApplicationController
    def index
      @users = User.all
      render json: @users
    end
  
    def show
      @user = User.find(params[:id])
    end
  
    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to users_path, notice: 'User deleted.'
    end
    
    def user_params
        params.permit(:avatar)
    end
  end

class UsersController < ApplicationController
before_action :authenticate_user!
skip_before_filter :verify_authenticity_token  
  def home
    @users = User.all
  end
  def update
    #console.log(params[:user])
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      render json: @user.to_json, status: :ok
    end
  end
  private 
    def user_params
      params.require(:user).permit(:email, :id, :updated_at, :created_at)
    end
end

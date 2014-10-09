class UsersController < ApplicationController
   #attr_accessor :first_name, :last_name, :email
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
   @user = User.create(user_params)
    # if @user.save    
    #   redirect_to "/users"
    # else
    #   render :new
    # end
    redirect_to "/users/#{@user.id}"
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end
  
  private
  def user_params
      params.require(:user).permit(:first_name, :last_name, :email)
  end
  
end

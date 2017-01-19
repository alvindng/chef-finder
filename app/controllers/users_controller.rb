class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
  end

  def show
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to the site!"
      redirect_to user_path(@user)
    else
      flash[:alert] = "There was a problem creating your account. Please try again."
      redirect_back(fallback_location: root_path)
    end
  end

  def edit
    @user = User.find(params[:id])
    render :edit
  end

  def update
    @user= User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    root_path
  end

  private
  def user_params
  params.require(:user).permit(:name, :phone, :address, :role)
  end
end

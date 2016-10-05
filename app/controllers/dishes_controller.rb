class DishesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @user = User.find(params[:user_id])
    @dishes = Dish.all
  end
  def new
    @user = current_user
    @profile = Profile.find(params[:profile_id])
    @dish = @profile.dishes.new
    if @profile.user.id != current_user.id
      redirect_to profile_path(@profile)
    end
  end
  def create
    @user = current_user
    @profile = Profile.find(params[:profile_id])
    @dish = @profile.dishes.new(dish_params)
    if @dish.save
      respond_to do |format|
        format.html { redirect_to profile_path(@profile) }
        format.js
      end
      flash[:notice] = "Dish Added Successfully!"
    else
      render :new
    end
  end
  def show
    @profile = Profile.find(params[:profile_id])
    @dish = Dish.find(params[:id])
  end
  def edit
    @profile = Profile.find(params[:profile_id])
    @dish = Dish.find(params[:id])
  end
  def update
    @user = current_user
    @profile = Profile.find(params[:profile_id])
    @dish = Dish.find(params[:id])
    if @dish.update(dish_params)
      redirect_to profile_dish_path(@profile, @dish)
    else
      render :edit
    end
  end
  def destroy
    @user = current_user
    @profile = Profile.find(params[:profile_id])
    @dish = Dish.find(params[:id])
    @dish.destroy
    flash[:alert] = "Dish Deleted Successfully"
    redirect_to profile_path(@profile)
  end

  private
  def dish_params
    params.require(:dish).permit(:name, :description, :image)
  end
end

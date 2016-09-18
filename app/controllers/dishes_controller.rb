class DishesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @user = User.find(params[:user_id])
    @images = Image.all
  end
  def new
    @user = current_user
    @dish = @user.dishes.new
    if @user.id != current_user.id
      redirect_to user_path(@user)
    end
  end
  def create
    @user = current_user
    @dish = @user.dishes.new(dish_params)
    if @dish.save
      flash[:alert] = "Dish Added Successfully!"
      redirect_to user_path(@user)
    else
      render :new
    end
  end
  def show
    @user = User.find(params[:user_id])
    @dish = Dish.find(params[:id])
  end
  def edit
    @user = User.find(params[:user_id])
    @dish = Dish.find(params[:id])
  end
  def update
    @user = current_user
    @dish = Dish.find(params[:id])
    if @dish.update(dish_params)
      redirect_to user_dish_path(@user, @dish)
    else
      render :edit
    end
  end
  def destroy
    @user = current_user
    @dish = Dish.find(params[:id])
    @dish.destroy
    flash[:alert] = "Dish Deleted Successfully"
    redirect_to user_path(@user)
  end

  private
  def dish_params
    params.require(:dish).permit(:name, :description, :image)
  end
end

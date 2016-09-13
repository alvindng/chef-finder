class DishesController < ApplicationController
  def new
    @chef = Chef.find(params[:chef_id])
    @dish = @chef.dishes.new
  end
  def create
    @chef = Chef.find(params[:chef_id])
    @dish = @chef.dishes.new(dish_params)
    if @dish.save
      redirect_to chef_path(@dish.chef)
    else
      render :new
    end
  end
  def show
    @chef = Chef.find(params[:chef_id])
    @dish = Dish.find(params[:id])
  end
  def edit
    @chef = Chef.find(params[:chef_id])
    @dish = Dish.find(params[:id])
  end
  def update
    @chef = Chef.find(params[:chef_id])
    @dish = Dish.find(params[:id])
    if @dish.update(dish_params)
      redirect_to chef_dish_path(@chef, @dish)
    else
      render :edit
    end
  end
  def destroy
    @chef = Chef.find(params[:chef_id])
    @dish = Dish.find(params[:id])
    @dish.destroy
    flash[:alert] = "Dish Deleted Successfully"
    redirect_to chef_path(@chef)
  end

  private
  def dish_params
    params.require(:dish).permit(:name, :description, :image)
  end
end

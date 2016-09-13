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

  private
  def dish_params
    params.require(:dish).permit(:name, :description, :image)
  end
end

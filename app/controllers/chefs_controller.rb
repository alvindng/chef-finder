class ChefsController < ApplicationController
  def index
    @chefs = Chef.all
    render :index
  end
  def show
    @chef = Chef.find(params[:id])
    render :show
  end
  def new
    @chef = Chef.new
    render :new
  end
  def create
    @chef = Chef.new(chef_params)
    if @chef.save
      redirect_to chefs_path
    else
      render :new
    end
  end
  def edit
    @chef = Chef.find(params[:id])
    render :edit
  end
  def update
    @chef= Chef.find(params[:id])
    if @chef.update(chef_params)
      redirect_to chefs_path
    else
      render :edit
    end
  end

private
def chef_params
  params.require(:chef).permit(:name, :phone, :address)
end
end

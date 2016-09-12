class ChefsController < ApplicationController
  def index
    @chefs = Chef.all
    render :index
  end
  def show
    @chef = Chef.find(params[:id])
    render :show
  end
end

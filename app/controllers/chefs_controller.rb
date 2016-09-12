class ChefsController < ApplicationController
  def index
    @chefs = Chef.all
    render :index
  end
end

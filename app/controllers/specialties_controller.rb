class SpecialtiesController < ApplicationController
  def index
    @specialties = Specialty.all
  end
  def show
    @specialties = Specialty.find(params[:id])
  end
end

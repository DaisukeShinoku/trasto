class User::HousesController < ApplicationController
  def index
    @houses = House.all
    @cateories = Category.where(is_valid: true)
  end

  def show
    @house = House.find(params[:id])
  end
end

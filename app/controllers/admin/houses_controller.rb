class Admin::HousesController < ApplicationController
  before_action :logged_in_admin
  before_action :set_categories

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

def create
  @house = House.new(house_params)
  # category = Category.find(params[:category_id])
    if @house.save
      # @house.categories << @category
      redirect_to admin_house_path(@house)
    else
      render action: :new
    end
end

def edit
  @house = House.find(params[:id])
end

def update
  @house = House.find(params[:id])
    if @house.update(house_params)
      redirect_to admin_house_url(@house)
    else
      render action: :edit
    end
end

  private

  def house_params
    params.require(:house).permit(:name, :postcode, :prefecture_code, :address, :domitory_price, :private_price,
                                  :copy, :introduction, :house_image, :is_valid, {:category_ids => []})
  end

  def set_categories
    @categories = Category.where(is_valid: true)
  end
end
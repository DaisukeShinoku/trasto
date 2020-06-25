class Admin::CategoriesController < ApplicationController
  before_action :logged_in_admin

  def index
    @categories = Category.all
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.save
    redirect_to admin_categories_path
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
        redirect_to admin_categories_path
    else
      render action: :edit
    end
  end

  private

  def category_params
      params.require(:category).permit(:name, :is_valid)
  end

  def set_category
      @category = Category.find(params[:id])
  end

end

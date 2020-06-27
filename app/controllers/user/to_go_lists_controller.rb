class User::ToGoListsController < ApplicationController
  def create
    @house = House.find(params[:house_id])
    to_go_list = @house.to_go_lists.new(user_id: current_user.id)
    to_go_list.save
    redirect_to request.referer
  end

  def destroy
    @house = House.find(params[:house_id])
    to_go_list = current_user.to_go_lists.find_by(house_id: @house.id)
    to_go_list.destroy
    redirect_to request.referer
  end

  def index
    @user = User.find(params[:id])
    @to_go_lists = ToGoList.where(user_id: @user.id).all
    # @houses = House.where(id: @to_go_lists.house_id).all 
  end
  private

  def redirect
    case params[:redirect_id].to_i
    when 0
      redirect_to houses_path
    when 1
      redirect_to house_path(@house)
    end
  end
end

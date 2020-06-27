class User::BookmarksController < ApplicationController
  def create
    @house = House.find(params[:house_id])
    bookmark = @house.bookmarks.new(user_id: current_user.id)
    bookmark.save
    redirect_to request.referer
  end

  def destroy
    @house = House.find(params[:house_id])
    bookmark = current_user.bookmarks.find_by(house_id: @house.id)
    bookmark.destroy
    redirect_to request.referer
  end

  def index
    @user = User.find(params[:id])
    @bookmarks = Bookmark.where(user_id: @user.id).all
    # @houses = House.where(id: @bookmarks.house_id).all 
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

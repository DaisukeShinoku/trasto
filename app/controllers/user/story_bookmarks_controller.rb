class User::StoryBookmarksController < ApplicationController
  before_action :logged_in_user
  
  def create
    @story = Story.find(params[:id])
    @house = House.find(params[:house_id])
    story_bookmark = @story.story_bookmarks.new(user_id: current_user.id)
    story_bookmark.save
    redirect_to request.referer
  end

  def destroy
    @story = Story.find(params[:id])
    @house = House.find(params[:house_id])
    story_bookmark = current_user.story_bookmarks.find_by(story_id: @story.id)
    story_bookmark.destroy
    redirect_to request.referer
  end

  # def index
    # @user = User.find(params[:id])
    # @bookmarks = Bookmark.where(user_id: @user.id).all
    # @houses = House.where(id: @bookmarks.house_id).all 
  # end
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

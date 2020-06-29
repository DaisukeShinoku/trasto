class User::HousesController < ApplicationController

  def index
    @houses = House.all
    @cateories = Category.where(is_valid: true)
  end

  def show
    @house = House.find(params[:id])
  end

    # ログイン済みユーザーかどうか確認
    def logged_in_user
      unless logged_in?
        store_location
        flash[:warning] = "Please log in."
        redirect_to login_url
      end
    end

    # 正しいユーザーかどうか確認
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    # お気に入り機能
    # def bookmarks
      # @houses = current_user.bookmark_houses.includes(:user)
    # end
end

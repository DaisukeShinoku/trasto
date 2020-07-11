class User::HouseCommentsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destory]
  before_action :correct_user,   only: [:destroy]

  def index
    @house = House.find(params[:id])
    @house_comments = HouseComment.where(house_id: @house.id)
  end

  def create
    @house = House.find(params[:id])
    @house_comment = @house.house_comments.build(house_comment_params)
    @house_comment.user_id = current_user.id
    @house_comment.house_id = @house.id
    if @house_comment.save
      flash[:success] = "応援コメントを投稿しました!"
      redirect_to request.referrer || root_url
    else
      flash[:warning] = "応援コメントの投稿に失敗しました"
      redirect_to request.referrer || root_url
    end
  end

  def destroy
    @house = House.find(params[:id])
    @house_comment = HouseComment.find(params[:id])
    @house_comment.destroy
    flash[:warning] = "コメントを削除しました"
    redirect_to request.referrer || root_url
  end

  private

  def house_comment_params
    params.require(:house_comment).permit(:content)
  end

  def correct_user
    @house_comment = current_user.house_comments.find_by(id: params[:id])
    redirect_to root_url if @house_comment.nil?
  end
end

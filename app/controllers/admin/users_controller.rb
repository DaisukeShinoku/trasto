class Admin::UsersController < ApplicationController
  before_action :logged_in_admin

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to admin_user_path(@user.id)
    else
      render action: :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:user_id, :account_name, :display_name, :email, :avatar , :introduction , :is_valid)
  end
end

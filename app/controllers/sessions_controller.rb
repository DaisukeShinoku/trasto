class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      flash[:info] = 'ログインしました'
      redirect_back_or root_url
    else
      flash.now[:warning] = 'メールアドレスかパスワードが正しくありません'
      render action: :new
    end
  end

  def destroy
    log_out if logged_in?
    flash[:info] = 'ログアウトしました'
    redirect_to root_url
  end

end

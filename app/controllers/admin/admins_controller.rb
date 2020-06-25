class Admin::AdminsController < ApplicationController

  def top
  end

  def create
    admin = Admin.find_by(email: params[:session][:email].downcase)
    if admin && admin.authenticate(params[:session][:password])
      log_in_admin admin
      redirect_to admin_top_url
    else
      flash[:warning] = 'Invalid email/password combination'
      redirect_to 'root_url'
    end
  end

  def destroy
    log_out_admin
    redirect_to root_url
  end

  private

  def admin_params
    params.require(:admin).permit(:email, :password)
  end

      # ログイン済みアドミンかどうか確認
      def logged_in_admin
        unless logged_in_admin?
          store_location
          flash[:danger] = "管理者権限がありません"
          redirect_to admin_login_url
        end
      end

end

class Admin::AdminsController < ApplicationController
  include Admin::AdminsHelper
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

end

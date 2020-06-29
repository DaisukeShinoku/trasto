class ApplicationController < ActionController::Base
  include SessionsHelper
  # include Admin::AdminsHelper

  private
      # ログイン済みアドミンかどうか確認
      # def logged_in_admin
        # unless logged_in_admin?
          # store_location
          # flash[:danger] = "管理者権限がありません"
          # redirect_to admin_login_url
        # end
      # end
      
      # ログイン済みユーザーかどうか確認
      def logged_in_user
        unless logged_in?
          store_location
          flash[:danger] = "Please log in."
          redirect_to login_url
        end
      end
end

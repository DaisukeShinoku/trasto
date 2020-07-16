class ApplicationController < ActionController::Base
  include SessionsHelper

  private
      
      # ログイン済みユーザーかどうか確認
      def logged_in_user
        unless logged_in?
          store_location
          flash[:danger] = "ログインしてください"
          redirect_to login_url
        end
      end

    # 管理者かどうか確認
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

    # ゲストユーザーかどうか確認
    def check_guest
      if current_user.guest?
      flash[:danger] = "ゲストユーザーには許可されていないアクションです"
      redirect_to root_url
      end
    end

end

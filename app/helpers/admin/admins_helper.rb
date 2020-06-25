module Admin::AdminsHelper
  # アドミンでログインする
  def log_in_admin(admin)
    session[:admin_id] = admin.id
  end

    # 現在ログイン中のアドミンを返す (いる場合)
    def current_admin
      if session[:admin_id]
        @current_admin ||= Admin.find_by(id: session[:admin_id])
      end
    end

  # アドミンがログインしていればtrue、その他ならfalseを返す
  def logged_in_admin?
    !current_admin.nil?
  end

  # 現在のアドミンをログアウトする
  def log_out_admin
    session.delete(:admin_id)
    @current_admin = nil
  end
end

class Admin::BaseController < ActionController::Base
  layout 'admin/layouts/application'
  before_action :manager_logged_in?

  def reset_manager_session
    session[:admin_manager] = nil
    @current_manager = nil
  end

  def manager_logged_in?
    manager_id = session[:admin_manager]
    if manager_id then
      begin
        @current_manager = Admin::Manager.find(manager_id)
      rescue ActiveRecord::RecordNotFound
        reset_manager_session
      end
    end

    # current_managerが取れなかったらログイン画面にリダイレクト
    unless @current_manager
      flash[:referer] = request.fullpath
      redirect_to admin_sign_in_path
    end
  end

end

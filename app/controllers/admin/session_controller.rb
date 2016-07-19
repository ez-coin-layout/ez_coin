module Admin
  class Admin::SessionController < BaseController
    layout 'admin/layouts/empty'
    skip_before_action :manager_logged_in?

    def new
      @manager = Admin::Manager.new
    end

    def create
      @manager = Admin::Manager.find_by(username: manager_params[:username])
      if @manager && @manager.authenticate(manager_params[:password])
        reset_manager_session
        session[:admin_manager] = @manager.id
        redirect_to params[:referer].present? ? params[:referer] : admin_root_path
      else
        @manager = Admin::Manager.new
        flash.now[:referer] = params[:referer]
        flash.now[:error] = true
        render :new
      end
    end

    def destroy
      reset_manager_session
      redirect_to admin_sign_in_path
    end

    private
    def manager_params
      params.require(:admin_manager).permit(:username, :password)
    end
  end
end

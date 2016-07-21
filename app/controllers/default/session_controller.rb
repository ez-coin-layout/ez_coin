module Default
  class Default::SessionController < BaseController
    skip_before_action :user_logged_in?

    def new
      @user = Default::User.new
    end

    def create
      @user = Default::User.find_by(email: user_params[:email])
      if @user && @user.authenticate(user_params[:password])
        reset_user_session
        session[:default_user] = @user.id
        redirect_to params[:referer].present? ? params[:referer] : root_path
      else
        @user = Default::User.new
        flash.now[:referer] = params[:referer]
        flash.now[:error] = true
        render :new
      end
    end

    def destroy
      reset_user_session
      redirect_to default_sign_in_path
    end

    private
    def user_params
      params.require(:default_user).permit(:email, :password)
    end
  end
end

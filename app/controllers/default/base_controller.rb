class Default::BaseController < ActionController::Base
  layout 'default/layouts/application'
  before_action :user_logged_in?

  def reset_user_session
    session[:default_user] = nil
    @current_user = nil
  end

  def user_logged_in?
    user_id = session[:default_user]
    if user_id then
      begin
        @current_user = Default::User.find(user_id)
      rescue ActiveRecord::RecordNotFound
        reset_user_session
      end
    end

    # current_userが取れなかったらログイン画面にリダイレクト
    unless @current_user
      flash[:referer] = request.fullpath
      redirect_to default_sign_in_path
    end
  end

end

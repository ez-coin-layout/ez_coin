module Default::SessionsHelper

  def current_user
    if session[:default_user]
      @current_user ||= Default::User.find_by(id: session[:default_user])
    end
  end
end

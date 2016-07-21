module Default
  class Default::ActionController < BaseController
    skip_before_action :user_logged_in?

    def index
    end
  end
end

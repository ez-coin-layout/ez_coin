module Default
  class Default::EntranceController < BaseController
    skip_before_action :user_logged_in?
    
    def index
    end
  end
end

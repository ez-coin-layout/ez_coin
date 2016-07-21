module Admin
  class Admin::UserController < BaseController
    def index
      @users = Default::User.all
    end
  end
end

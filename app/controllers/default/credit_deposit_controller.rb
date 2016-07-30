module Default
  class Default::CreditDepositController < BaseController
    skip_before_action :user_logged_in?
    before_action :set_user, only: :new

    def new
    end

    def complete
    end

    private
      def set_user
        # @change_user = Default::User.find(params[:id])
        @user = Default::User.find(1)
      end
  end
end

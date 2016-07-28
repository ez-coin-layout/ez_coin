module Default
  class Default::DepositRequestsController < BaseController
    skip_before_action :user_logged_in?
    before_action :set_user, only: :new


    def new
      @default_deposit_request = Default::DepositRequest.new
    end


    def create
      @default_deposit_request = Default::DepositRequest.new(default_deposit_request_params)
      if @default_deposit_request.save
        redirect_to default_deposit_request_complete_path
      else
        render :new
      end
    end


    def complete
    end


    private
      def set_user
        # @change_user = Default::User.find(params[:id])
        @user = Default::User.find(1)
      end
      def default_deposit_request_params
        params.require(:default_deposit_request).permit(
          :user_id,
          :amount,
          :status,
          :request_point
        )
      end
  end
end

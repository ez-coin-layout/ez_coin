module Admin
  class Admin::DepositRequestsController < BaseController
    before_action :set_deposit_request, only: :destroy

    def index
      @deposit_requests = Default::DepositRequest.where(status: false).order(created_at: :desc)
    end

    def create
      @deposit_record = Admin::DepositRecord.new(deposit_params)
      @deposit_request = Default::DepositRequest.find(deposit_params[:deposit_request_id])
      if @deposit_record.save
        @deposit_request.update_attribute(:status, true)
        # *ここにメール送信内容を追加*
        redirect_to admin_deposit_requests_path
      else
        flash[:error] = "入金処理に失敗しました"
        redirect_to admin_deposit_requests_path
      end
    end

    def destroy
      @deposit_request.destroy
      redirect_to admin_deposit_requests_path
    end

    private
      def set_deposit_request
        @deposit_request = Default::DepositRequest.find(params[:id])
      end

      def deposit_params
        params.require(:deposit_record).permit(
          :user_id,
          :deposit_request_id,
          :deposit_method,
          :amount,
          :add_point
        )
      end
  end
end

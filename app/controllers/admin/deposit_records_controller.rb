module Admin
  class Admin::DepositRecordsController < BaseController
    before_action :set_deposit_record, only: :show


    def index
      @deposit_records = Admin::DepositRecord.order(created_at: :desc)
    end


    def show
    end


    private
      def set_deposit_record
        @deposit_record = Admin::DepositRecord.find(params[:id])
      end

  end
end

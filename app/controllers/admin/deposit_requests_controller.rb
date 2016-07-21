module Admin
  class Admin::DepositRequestsController < BaseController
    def index
      @deposit_requests = Default::DepositRequest.order(created_at: :desc)
    end
  end
end

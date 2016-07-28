module Default
  class Default::HomeController < BaseController
    layout 'default/layouts/dashboard'

    def index
      @deposit_records = Admin::DepositRecord.where(user_id: @current_user.id).order(created_at: :desc)
      @coin_records    = Default::CoinRecord.where(user_id: @current_user.id).order(created_at: :desc)
    end
  end
end

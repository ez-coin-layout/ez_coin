module Default
  class Default::ChangeCoinController < BaseController
    skip_before_action :user_logged_in?
    before_action :set_change_user, only: [:new, :complete]


    def new
      @default_change_coin = Default::CoinRecord.new
    end

    def create
      @default_change_coin = Default::CoinRecord.new(change_coin_params)
      @user                = Default::User.find(change_coin_params[:user_id])
      if @default_change_coin.save
        total = @user.total_point - change_coin_params[:change_point].to_i
        @user.update_attribute(:total_point, total)
        redirect_to default_change_coin_complete_path
      else
        render :new
      end
    end

    def complete
    end


    private
      def set_change_user
        # 本番用
        # @change_user = Default::User.find(params[:password_digest])
        # とりあえずuser_id 1　で情報を取得
        @change_user = Default::User.find(1)
      end

      def change_coin_params
        params.require(:default_coin_record).permit(
          :user_id,
          :change_point,
          :coin_type
        )
      end
  end
end

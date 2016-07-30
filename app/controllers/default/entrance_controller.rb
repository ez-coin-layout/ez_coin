module Default
  class Default::EntranceController < BaseController
    skip_before_action :user_logged_in?
    require 'securerandom'

    def index
    end

    def check
      # 銀振りボタンを押した場合
      if params[:bank_deposit]
        if user = Default::User.find_by( via_site: api_user_params[:transaction_identity], email: api_user_params[:email] )
          session[:amount] = api_user_params[:amount]
          session[:point] = api_user_params[:point]
          redirect_to new_default_deposit_request_path(id: user.id)
        else
          ezid = SecureRandom.hex(4)
          @api_default_user = Default::User.new(
            ezid: ezid,
            email: api_user_params[:email],
            password: ezid,
            password_confirmation: ezid,
            total_point: 0,
            via_site: api_user_params[:transaction_identity]
          )
          if @api_default_user.save
            session[:amount] = api_user_params[:amount]
            session[:point] = api_user_params[:point]
            redirect_to new_default_deposit_request_path(id: @api_default_user.id)
          else
            render action: :index
          end
        end
      # クレカボタンを押した場合
      else
        if user = Default::User.find_by( via_site: api_user_params[:transaction_identity], email: api_user_params[:email] )
          session[:amount] = api_user_params[:amount]
          session[:point] = api_user_params[:point]
          redirect_to new_default_credit_deposit_path(id: user.id)
        else
          ezid = SecureRandom.hex(4)
          @api_default_user = Dedault::User.new(
            ezid: ezid,
            email: api_user_params[:email],
            password: ezid,
            password_confirmation: ezid,
            total_point: 0,
            via_site: api_user_params[:transaction_identity]
          )
          if @api_default_user.save
            session[:amount] = api_user_params[:amount]
            session[:point] = api_user_params[:point]
            redirect_to new_default_credit_deposit_path(id: @api_default_user.id)
          else
            render action: :index
          end
        end
      end
    end

    private
      def api_user_params
        params.require(:entrance).permit(:token, :transaction_identity, :email, :amount, :point)
      end
  end
end

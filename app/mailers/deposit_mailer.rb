class DepositMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.deposit_mailer.send_when_deposit.subject
  #
  def send_when_deposit(user)
    @user = user

    mail to:      user.email,
         subject: 'お客様のお振込の確認が取れました'
  end
end

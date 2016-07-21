# Preview all emails at http://localhost:3000/rails/mailers/deposit_mailer
class DepositMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/deposit_mailer/send_when_deposit
  def send_when_deposit
    DepositMailer.send_when_deposit
  end

end

require 'test_helper'

class DepositMailerTest < ActionMailer::TestCase
  test "send_when_deposit" do
    mail = DepositMailer.send_when_deposit
    assert_equal "Send when deposit", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

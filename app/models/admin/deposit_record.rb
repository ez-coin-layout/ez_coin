class Admin::DepositRecord < ActiveRecord::Base
  belongs_to :user, class_name: 'Default::User'
  belongs_to :deposit_request, class_name: 'Default::DepositRequest', foreign_key: 'deposit_request_id'

  enum deposit_method: { "クレジット" => 0, "銀振り" => 1 }

end

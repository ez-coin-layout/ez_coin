class Default::DepositRequest < ActiveRecord::Base
  belongs_to :user, class_name: 'Default::User'
  has_one :deposit_record, class_name: 'Admin::DepositRecord', foreign_key: 'deposit_request_id'

  enum status: { "未処理" => 0, "処理済み" => 1 }

end

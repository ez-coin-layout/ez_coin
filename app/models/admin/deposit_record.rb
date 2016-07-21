class Admin::DepositRecord < ActiveRecord::Base
  belongs_to :user, class_name: 'Default::User'
  has_one :deposit_request, class_name: 'Default::DepositRequest', foreign_key: 'deposit_request_id'
end

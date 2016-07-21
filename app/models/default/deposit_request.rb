class Default::DepositRequest < ActiveRecord::Base
  belongs_to :user, class_name: 'Default::User'
  has_one :deposit_record, class_name: 'Admin::DepositRecord'
end

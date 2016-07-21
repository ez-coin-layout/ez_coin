class Default::DepositRequest < ActiveRecord::Base
  belongs_to :user, class_name: 'Default::User'
end

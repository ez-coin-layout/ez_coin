class Default::User < ActiveRecord::Base
  has_secure_password
  has_many   :deposit_requests, foreign_key: 'user_id'
  has_many   :deposit_records,  foreign_key: 'user_id'
  validates  :email, uniqueness: { scope: [:ezid] }
end

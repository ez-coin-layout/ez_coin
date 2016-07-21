class Default::User < ActiveRecord::Base
  has_secure_password
  has_many   :deposit_requests, foreign_key: 'user_id'
end

class Default::CoinRecord < ActiveRecord::Base
  belongs_to :user, class_name: 'Default::User'

  enum coin_type: { "ez-coin" => 0 }
end

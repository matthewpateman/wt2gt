class Item < ActiveRecord::Base
  attr_accessible :merchant_id, :name, :price, :price_currency, :private, :url, :user_id

  belongs_to :user
end

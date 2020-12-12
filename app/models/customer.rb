class Customer < ApplicationRecord


  has_many :users, through: :customer_users
  has_many :customer_users
end

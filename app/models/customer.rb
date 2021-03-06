class Customer < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :settlement

  has_many :customer_users
  has_many :users, through: :customer_users
  has_many :partners
  has_many :gcustomers
  has_many :troubles
end

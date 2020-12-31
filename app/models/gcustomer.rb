class Gcustomer < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :settlement

  belongs_to :customer
end

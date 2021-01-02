class Partner < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to:decision

  belongs_to :customer, optional: true
end

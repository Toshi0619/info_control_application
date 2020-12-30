class Decision < ActiveHash::Base
  self.data = [
    { id: 1, name: '有り' },
    { id: 2, name: '無し' }
  ]

  include ActiveHash::Associations
  has_many :partners
end

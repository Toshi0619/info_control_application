class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '建設業' },
    { id: 2, name: 'IT・サービス業' },
    { id: 3, name: '広告業' },
    { id: 4, name: '運輸・物流業' },
    { id: 5, name: '小売業' },
    { id: 6, name: 'デベロッパー業' },
    { id: 7, name: '金融業' },
    { id: 8, name: '公共業' },
    { id: 9, name: '製造業' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :customers
end

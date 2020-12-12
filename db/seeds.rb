# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Customer.create(name:'A建設',address:'東京都千代田区丸の内1-1-1丸の内ビル９F',firstdate:'2000-04-01',category_id:'1',employee:'5000',sales:'4000',settlement_id:'10',product:'人事給与',memo:'',takeover:'')
Customer.create(name:'株式会社B',address:'東京都北区赤羽1-2-3北赤羽ビル７F',firstdate:'2006-01-01',category_id:'2',employee:'2000',sales:'1500',settlement_id:'7',product:'人事給与、Web',memo:'',takeover:'')
Customer.create(name:'C株式会社',address:'大阪府淀川区西淀川2-3-4スーパービル15F',firstdate:'2010-04-01',category_id:'3',employee:'1000',sales:'500',settlement_id:'1',product:'勤怠',memo:'',takeover:'')
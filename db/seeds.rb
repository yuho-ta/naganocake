# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
  email: "aaaaa@aaaa",
  password: "aaaaaa"
)
Customer.create!(
  [
    {
      first_name: "難波",
      last_name: "専太",
      first_name_kana: "ナンバ",
      last_name_kana: "センタ",
      email: "0@0",
      postal_code: "5420076",
      address: "大阪府大阪市中央区難波4-4-4 難波御堂筋センタービル 8階",
      telephone_number: "00088889999",
      is_active: true,
      password: "000000",
    }
  ]
)
  
Genre.create!(
  [
    {
      name: "ケーキ",
      is_active: true,
    },
    {
      name: "焼き菓子",
      is_active: true,
    },
    {
      name: "プリン",
      is_active: false,
    },
    {
      name: "和菓子",
      is_active: false,
    },
    {
      name: "アイス",
      is_active: true,
    }
  ]
)
Item.create!(
 [
	{
		genre_id: 1,
		name: "ロールケーキ",
		introduction: "長野県産の山葵を生地とクリームに使ったロールケーキです。",
		price: 1000,
		is_active: true,
    
	},
	{
		genre_id: 2,
		name: "クッキー",
		introduction: "長野県安曇野市で採れた山葵を粉末にし生地に混ぜて作ったクッキーです。程よい甘しょっぱさでお酒のおつまみにもなります。",
		price: 1000,
		is_active: true,
   
	}
])

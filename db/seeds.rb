# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
['政治','法律','経済','外交','教育','環境','医療'].each do |cate|
    Category.create!(
        { name: cate}
    )
end

# Constituency.create(postalcode: 1, constituency: '横浜')
# Constituency.create(postalcode: 2, constituency: '川崎')

Party.create(name: '自民党')
Party.create(name: '民主党')

Politician_classifications.create(name: '衆議院議員')
Politician_classifications.create(name: '参議院議員')

# Politician.create(party_id: 1, first_name: '晋三', last_name: '安倍', first_name_kana: 'しんぞう', last_name_kana: 'あべ')
# Politician.create(party_id: 1, first_name: '太郎', last_name: '麻生', first_name_kana: 'たろう', last_name_kana: 'あそう')
# Politician.create(party_id: 1, first_name: '太郎', last_name: '河野', first_name_kana: 'たろう', last_name_kana: 'こうの')



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

Politician.create(id: 1, party_id: 1, first_name: '晋三', last_name: '安倍')
Politician.create(id: 2, party_id: 1, first_name: '太郎', last_name: '麻生')
Politician.create(id: 3, party_id: 1, first_name: '太郎', last_name: '河野')

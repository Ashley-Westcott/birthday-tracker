# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: "Ashley", last_name: "Westcott", birthday: "01/05/1990", email: "ashley.e.westcott@gmail.com", telephone_number: "402-850-7251", img_url: "https://media.licdn.com/dms/image/C4E03AQE_RQMBmDWgaw/profile-displayphoto-shrink_200_200/0?e=1564617600&v=beta&t=4E_XNPLBP1LOtCDi6luiuvshv99qlg4iV5qk20sTtTQ")
User.create(first_name: "Adam", last_name: "Robinson", birthday: "13/09/1978", email: "adamkanoa@gmail.com", telephone_number: "415-385-0230", img_url: "https://media.bizj.us/view/archive/pacific/user_media/AdamK.-Robinson-218281*220.jpg")

Friendship.create(follower_id: 1, followee_id: 2)
Friendship.create(follower_id: 2, followee_id: 1)

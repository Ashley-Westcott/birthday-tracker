# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: "Ashley", last_name: "Westcott", birthday: "01/05/1990", email: "ashley.e.westcott@gmail.com", telephone_number: "402-850-7251", img_url: "https://media.licdn.com/dms/image/C4E03AQE_RQMBmDWgaw/profile-displayphoto-shrink_200_200/0?e=1564617600&v=beta&t=4E_XNPLBP1LOtCDi6luiuvshv99qlg4iV5qk20sTtTQ", username: "Ash", password: "test" )
User.create(first_name: "Adam", last_name: "Robinson", birthday: "13/09/1978", email: "adamkanoa@gmail.com", telephone_number: "415-385-0230", img_url: "https://media.bizj.us/view/archive/pacific/user_media/AdamK.-Robinson-218281*220.jpg", username: "Adam", password: "test" )
User.create(first_name: "Spongebob", last_name: "Squarepants", birthday: "01/06/1990", email: "spongebob.squarepants@gmail.com", telephone_number: "111-111-1234", img_url: "https://pbs.twimg.com/profile_images/1002272769352978433/9S4QWSR0.jpg", username: "CrabbyPatties4Lyfe", password: "test" )
User.create(first_name: "Barack", last_name: "Obama", birthday: "01/07/1990", email: "bobama@gmail.com", telephone_number: "111-111-1237", img_url: "https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTE4MDAzNDEwNzg5ODI4MTEw/barack-obama-12782369-1-402.jpg", username: "President", password: "test" )
User.create(first_name: "Michelle", last_name: "Obama", birthday: "01/09/1990", email: "mobama@gmail.com", telephone_number: "111-111-1236", img_url: "https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTE5NDg0MDU0ODEyNzIyNzAz/michelle-obama-thumb-2.jpg", username: "Firstlady", password: "test" )
User.create(first_name: "Anonymous", last_name: "Person", birthday: "13/10/1978", email: "adamkanoa@gmail.com", telephone_number: "111-111-1235", img_url: "https://user-images.githubusercontent.com/16608864/35882949-bbe13aa0-0bab-11e8-859c-ceda3b213818.jpeg", username: "Mysteryman", password: "test" )

Friendship.create(follower_id: 1, followee_id: 2)
Friendship.create(follower_id: 1, followee_id: 3)
Friendship.create(follower_id: 1, followee_id: 4)
Friendship.create(follower_id: 1, followee_id: 5)
Friendship.create(follower_id: 2, followee_id: 6)
Friendship.create(follower_id: 2, followee_id: 1)

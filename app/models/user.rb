class User < ApplicationRecord
  has_secure_password
  has_many :followed_users, foreign_key: :follower_id, class_name: 'Friendship'
  has_many :followees, through: :followed_users
  has_many :following_users, foreign_key: :followee_id, class_name: 'Friendship'
  has_many :followers, through: :following_users
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :telephone_number, presence: true

  def img_url=(value)
    if value.blank?
      write_attribute :img_url, 'https://user-images.githubusercontent.com/16608864/35882949-bbe13aa0-0bab-11e8-859c-ceda3b213818.jpeg'
    else
      write_attribute :img_url, value
    end
  end

  def name
    "#{first_name} #{last_name}"
  end

  def self.search(search)
    if search
      user = User.find_by(last_name: search)
      if user
        self.where(id: user.id)
      else
        User.all
      end
    else
      User.all
    end
  end



end

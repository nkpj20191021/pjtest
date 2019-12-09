class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :topics
  has_many :user_events

  attachment :user_image
  
  enum gender: {man:0, woman:1, custom:2}

  REGISTRABLE_ATTRIBUTES = %i(
    last_name
    first_name
    email
    gender
    age
  )
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true
  validates :bio, presence: true
end

User.destroy_all

user1 = User.create(username: "firstuser", email: 'firstemail@gmail.com', bio: "I am the first amazing user", password: '123456')
user2 = User.create(username: "seconduser", email: 'firstemail@gmail.com', bio: "I am the first amazing user", password: '123456')
user3 = User.create(username: "thirduser", email: 'firstemail@gmail.com', bio: "I am the first amazing user", password: '123456')
user4 = User.create(username: "fourthuser", email: 'firstemail@gmail.com', bio: "I am the first amazing user", password: '123456')

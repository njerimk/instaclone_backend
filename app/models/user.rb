class User < ApplicationRecord
    has_many :followed_users, foreign_key: :follower_id, class_name: 'Friendship'
    has_many :followed, through: :followed_users
    
    has_many :following_users, foreign_key: :followed_id, class_name: 'Friendship'
    has_many :followers, through: :following_users
    
    has_many :comments, as: :commentable
    
    has_many :posts
end

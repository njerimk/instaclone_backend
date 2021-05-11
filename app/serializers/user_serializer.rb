class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :full_name, :username, :password

  has_many :followed, through: :followed_users
    
  has_many :followers, through: :following_users
    
    
  has_many :posts
  has_many :likes
  has_many :comments, as: :commentable

end

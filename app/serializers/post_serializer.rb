class PostSerializer < ActiveModel::Serializer
  attributes :id, :post_caption, :user_id
  belongs_to :user
  has_many :likes  
  has_many :comments, as: :commentable

end

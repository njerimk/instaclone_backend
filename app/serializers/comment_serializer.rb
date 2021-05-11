class CommentSerializer < ActiveModel::Serializer
  attributes :id, :commentable_type, :commentable_id, :user, :body
  
  belongs_to :user
  
end

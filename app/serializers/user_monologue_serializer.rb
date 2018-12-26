class UsermonologueSerializer < ActiveModel::Serializer
  attributes :id, :monologue_id, :user_id
  belongs_to :monologue
  belongs_to :user
end

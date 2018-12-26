class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :email
  has_many :usermonologues
  has_many :monologues, through: :usermonologues
end

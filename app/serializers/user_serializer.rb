class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password, :email
  has_many :usermonologues
  has_many :monologues, through: :usermonologues
end

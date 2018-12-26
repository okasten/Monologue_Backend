class MonologueSerializer < ActiveModel::Serializer
  attributes :id, :character, :play
  has_many :usermonologues
  has_many :users, through: :usermonologues
end

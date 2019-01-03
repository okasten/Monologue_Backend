class MonologueSerializer < ActiveModel::Serializer
  attributes :id, :character, :play, :script, :genre, :length, :age, :scanFile, :notes
  has_many :usermonologues
  has_many :users, through: :usermonologues
end

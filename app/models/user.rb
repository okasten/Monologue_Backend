class User < ApplicationRecord
  has_many :usermonologues
  has_many :monologues, through: :usermonologues
end

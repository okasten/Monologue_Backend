class Monologue < ApplicationRecord
  has_many :usermonologues
  has_many :users, through: :usermonologues

end

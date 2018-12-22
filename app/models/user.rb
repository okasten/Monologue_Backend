class User < ApplicationRecord
  has_secure_password
  has_many :usermonologues
  has_many :monologues, through: :usermonologues

end

class User < ApplicationRecord
  has_secure_password
  # validates :username, uniqueness: {case_sensitive: false}
  has_many :usermonologues
  has_many :monologues, through: :usermonologues

end

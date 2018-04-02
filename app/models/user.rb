class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
end

class User < ApplicationRecord
  has_secure_password
end

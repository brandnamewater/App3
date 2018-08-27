class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :email
end

#creating admin users - restrict areas to admins #

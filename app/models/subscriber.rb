class Subscriber < ApplicationRecord
  validates :f_name, :l_name, :email, :Country,
          presence: true
end

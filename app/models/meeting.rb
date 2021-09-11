class Meeting < ApplicationRecord
    has_many :users
    has_many :prices, through: :users
    validates :title, length: {minimum: 5}

end
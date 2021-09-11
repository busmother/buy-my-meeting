class Meeting < ApplicationRecord
    has_many :users
    has_many :rates, through: :users
    validates :title, length: {minimum: 5}

end
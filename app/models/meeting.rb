class Meeting < ApplicationRecord
    has_many :users, through: :invitations
    validates :title, length: {minimum: 5}

end
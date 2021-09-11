class User < ApplicationRecord
    has_many :meetings
    has_one :rate
    validates :name, length: {minimum: 2}
end
class Rate < ApplicationRecord
    belongs_to :user
    validates :hourly_rate, numericality: { only_integer: true}
end
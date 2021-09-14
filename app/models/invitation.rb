class Invitation < ApplicationRecord
    belongs_to :user
    belongs_to :meeting
    validates :user_id, uniqueness: {scope: :meeting_id}

end
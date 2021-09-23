class Meeting < ApplicationRecord
    has_many :invitations
    has_many :users, through: :invitations
    validates :title, length: {minimum: 1}

    def attendees 
        attendees = []
        self.invitations.each do |invitation|
            invitation.attendance == true ? attendees << invitation.user : invitation
        end
        return attendees
    end

    def total_cost #working
        attendees_rate = self.users.map { |a| a.rate }
        total_rate = attendees_rate.sum 
        total_rate*(self.minutes_duration/60)
    end

    def current_cost

    end

end
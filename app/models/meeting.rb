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

    def cost(attendees)
        attendees_rate = attendees.map { |a| a.rate }
        total_rate = attendees_rate.sum 
        total_rate*(self.minutes_duration/60)
    end

    def total_cost
        self.cost(self.users)
    end

    def current_cost
        self.cost(self.attendees)
    end

end
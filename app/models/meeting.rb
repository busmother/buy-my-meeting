class Meeting < ApplicationRecord
    has_many :users, through: :invitations
    validates :title, length: {minimum: 1}

    def total_cost
        attendees = self.users
        attendees.map { |a| a.rate*self.minutes_duration}
        attendees.sum
    end

    def current_cost
        attendees = []
        invitations = self.invitations
        invitations.each do |i|
            i.attendance ? attendees.push(i.user.rate*self.minutes_duration) : 
        end
        attendees.sum
    end

end
class Meeting < ApplicationRecord
    has_many :users, through: :invitations
    validates :title, length: {minimum: 5}

    def total_cost
        attendees = self.users
        attendees.map { |a| a.rate*self.minutes_duration}
        attendees.sum
    end

    def current_cost
        invitations = self.invitations
        invitations.each do |i|
            i.attenance ? i.user.rate*self.minutes_duration : 0
        end
        invitations.sum
    end

end
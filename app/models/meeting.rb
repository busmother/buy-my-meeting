class Meeting < ApplicationRecord
    has_many :invitations
    has_many :users, through: :invitations
    validates :title, length: {minimum: 1}

    #add has_many :invitations association to Meeting model

    def total_cost
        attendees_rate = self.users.map { |a| a.rate }
        total_rate = attendees_rate.sum 
        total_rate*(self.minutes_duration/60)
    end

    def current_cost
        attendees = []
        invitations = self.invitations
        invitations.each do |i|
            i.attendance ? attendees.push(i.user.rate*self.minutes_duration) : i
        end
        attendees.sum
    end

end
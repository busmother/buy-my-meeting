# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create!([
    {email: 'user1@gmail.com', password: 'password', name: 'user1', rate: 30},
    {email: 'user2@gmail.com', password: 'password', name: 'user2', rate: 18.5}, 
    {email: 'user3@gmail.com', password: 'password', name: 'user3', rate: 15},
    {email: 'user4@gmail.com', password: 'password', name: 'user4', rate: 15.5}
])

meetings = Meeting.create([
    {title: 'Brainstorm / Kickoff', minutes_duration: 30, start_time: "2021-10-04 13:00:00"},
    {title: 'Weekly standup - allstaff', minutes_duration: 30, start_time: "2021-10-04 10:00:00"},
    {title: 'Working lunch', minutes_duration: 60, start_time: "2021-10-16 12:30:00"},
    {title: 'OKR setting', minutes_duration: 60, start_time: "2021-10-16 15:30:00"},
    {title: 'One-on-One staffing meeting', minutes_duration: 60, start_time: "2021-10-17 11:00:00"},
    {title: 'Full team research deep dive', minutes_duration: 90, start_time: "2021-10-18 3:30:00"}
])

invitations = Invitation.create([
    {user_id: 1, meeting_id: 1},
    {user_id: 1, meeting_id: 2},
    {user_id: 1, meeting_id: 3},
    {user_id: 1, meeting_id: 4},
    {user_id: 1, meeting_id: 5},
    {user_id: 1, meeting_id: 6},
    {user_id: 2, meeting_id: 1},
    {user_id: 2, meeting_id: 2},
    {user_id: 2, meeting_id: 3},
    {user_id: 2, meeting_id: 4},
    {user_id: 2, meeting_id: 6},
    {user_id: 3, meeting_id: 2},
    {user_id: 3, meeting_id: 4},
    {user_id: 3, meeting_id: 5},
    {user_id: 3, meeting_id: 6, attendance: false},
    {user_id: 4, meeting_id: 2},
    {user_id: 4, meeting_id: 4},
    {user_id: 4, meeting_id: 6, attendance: false}
])
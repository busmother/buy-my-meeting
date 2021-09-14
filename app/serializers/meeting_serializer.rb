class MeetingSerializer
    include JSONAPI::Serializer
    attributes :id, :title, :minutes_duration, :start_time, :cost
end
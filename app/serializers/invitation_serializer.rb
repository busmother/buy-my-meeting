class UserSerializer
    include JSONAPI::Serializer
    attributes :id, :cost, :attendance, :user_id, :meeting_id, :created_at, :updated_at
end
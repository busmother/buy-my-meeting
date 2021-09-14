class UserSerializer
    include JSONAPI::Serializer
    attributes :id, :name, :rate, :email
end
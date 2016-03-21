class UserSerializer < ActiveModel::Serializer
  attributes :id, :message, :phone_number
end

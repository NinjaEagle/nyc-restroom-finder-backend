class ReviewSerializer < ActiveModel::Serializer
    attributes :id, :restroom_name, :text
    has_one :user
    has_one :restroom
end
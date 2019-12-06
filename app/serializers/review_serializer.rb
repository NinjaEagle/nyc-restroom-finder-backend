class ReviewSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :restroom_name, :text
    has_one :user
end
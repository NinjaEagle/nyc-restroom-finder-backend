class RestroomSerializer < ActiveModel::Serializer
  attributes :id, :name, :latitude, :longitude, :wheelchair_accessible, :restroom_type
  has_many :users
end
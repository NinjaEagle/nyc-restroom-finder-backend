class RestroomSerializer < ActiveModel::Serializer
  attributes :id, :name, :latitude, :longitude, :wheelchair_accessible, :restroom_type, :address, :start_time, :end_time
  has_many :users
end
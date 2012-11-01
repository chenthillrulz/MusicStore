class Store < ActiveRecord::Base
  attr_accessible :address, :coordinates, :lat, :lng, :name, :phone, :url

  geocoded_by :address, :latitude  => :lat, :longitude => :lng
	after_validation :geocode
end

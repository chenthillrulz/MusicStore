class Band < ActiveRecord::Base
	validate :band_id, :band_member_id

	# has_many :products
	# has_and_belongs_to_many :artists
	
 #  attr_accessible :content, :email, :image, :name, :self_titled, :artist_ids

 #  mount_uploader :image, ImageUploader
 belongs_to :band, :class_name => "Artist"
 belongs_to :artist, :foreign_key => 'band_member_id'

 attr_accessible :band_id, :band_member_id

 
end

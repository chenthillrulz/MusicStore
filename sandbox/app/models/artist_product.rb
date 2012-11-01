class ArtistProduct < ActiveRecord::Base
	validate :artist_id, :product_id

	# has_many :products
	# has_and_belongs_to_many :artists
	
 #  attr_accessible :content, :email, :image, :name, :self_titled, :artist_ids

 #  mount_uploader :image, ImageUploader
 belongs_to :artist
 belongs_to :product

 attr_accessible :artist_id, :product_id

 
end

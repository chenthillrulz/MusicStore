class Artist < ActiveRecord::Base
		has_many :products

		has_many :bands, :foreign_key => 'band_id', :source => :artist
		has_many :band_members, :through => :bands, :foreign_key => 'band_member_id', :source => :artist
		
		has_many :inverse_bands, :class_name => 'Band', :foreign_key => 'band_member_id' 

		#this one will give you the bands belonging to the artist
		has_many :inverse_band_members, :through => :inverse_bands, :source => :artist

		#has_many :bands, :through => :band_members, :class_name => "BandMember", :foreign_key => 'band_id'

		#has_many :artists, :through => :band_members
	  
	  attr_accessible :content, :email, :image, :name, :band_member_ids, :band_ids, :products

	  mount_uploader :image, ImageUploader

	  validates :name, presence: true
	end
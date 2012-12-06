class Song < ActiveRecord::Base
  belongs_to 	:product,
  						:class_name => '::Spree::Product'
  attr_accessible :mp3, :ogg, :name, :product_id

  mount_uploader :mp3, SoundUploader
  mount_uploader :ogg, SoundUploader

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :mp3, presence: true
end

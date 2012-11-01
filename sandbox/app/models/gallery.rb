class Gallery < ActiveRecord::Base
  attr_accessible :content, :image, :name

  mount_uploader :image, ImageUploader
end

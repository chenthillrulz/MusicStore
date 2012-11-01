class Video < ActiveRecord::Base
  belongs_to :product
  attr_accessible :name, :url
end

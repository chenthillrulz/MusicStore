class Review < ActiveRecord::Base
  belongs_to :product, :class_name => 'Spree::Product'
  attr_accessible :content, :name, :author, :product
end

class AddArtistsToProducts < ActiveRecord::Migration
  def change
    create_table :artists_products, :id => false do |t|

     	t.integer :artist_id
    	t.integer :product_id
    end

  end
end

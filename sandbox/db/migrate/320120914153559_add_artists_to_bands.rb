class AddArtistsToBands < ActiveRecord::Migration
  def change
  	create_table :bands, :id => false do |t|

     	t.integer :band_id
    	t.integer :band_member_id
    end
  end
end

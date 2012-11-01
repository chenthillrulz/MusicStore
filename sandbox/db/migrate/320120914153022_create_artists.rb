class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :email
      t.text :content
      t.string :image

      t.timestamps
    end

     change_table :spree_products do |t|
       t.references  :artist
     end

  end
end

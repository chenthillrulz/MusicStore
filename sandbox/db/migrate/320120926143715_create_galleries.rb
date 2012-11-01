class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.string :content
      t.string :image

      t.timestamps
    end
  end
end

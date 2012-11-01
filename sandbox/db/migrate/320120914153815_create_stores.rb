class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.float :url
      t.float :lat
      t.string :lng

      t.timestamps
    end
  end
end

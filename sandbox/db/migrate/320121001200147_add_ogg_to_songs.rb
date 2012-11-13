class AddOggToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :ogg, :string
  end
end

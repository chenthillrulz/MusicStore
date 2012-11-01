class AddHeadingToProduct < ActiveRecord::Migration
  def change
    add_column :spree_products, :heading, :string
  end
end

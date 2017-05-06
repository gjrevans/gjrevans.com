class AddDescriptionToSites < ActiveRecord::Migration[5.0]
  def change
    add_column :sites, :description, :string
  end
end

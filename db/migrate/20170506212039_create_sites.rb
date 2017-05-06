class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
      t.string :title
      t.string :image
      t.string :github
      t.string :link

      t.timestamps
    end
  end
end

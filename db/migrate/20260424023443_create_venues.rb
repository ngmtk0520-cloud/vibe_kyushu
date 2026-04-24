class CreateVenues < ActiveRecord::Migration[7.1]
  def change
    create_table :venues do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :instagram_url, null: false
      t.string :area, null: false

      t.timestamps
    end
  end
end

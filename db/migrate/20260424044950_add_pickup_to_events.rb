class AddPickupToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :pickup, :boolean
  end
end

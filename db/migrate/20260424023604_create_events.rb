class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.references :venue, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.datetime :date, null: false
      t.text :description, null: false
      t.string :image, null: false
      t.string :fee, null: false
      t.string :genre, null: false
      t.string :status, null: false
      t.string :source_url, null: false

      t.timestamps
    end
  end
end

class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :title       , null: false
      t.text :text          , null: false
      t.text :image         , null: false
      t.integer :genre_id   , null: false
      t.integer :os_id      , null: false
      t.string :price       , null: false
      t.timestamps
    end
  end
end

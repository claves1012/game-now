class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.references :user    , null: false, foreign_key: true
      t.string :title       , null: false
      t.text :text          , null: false
      t.integer :genre_id   , null: false
      t.string :brand
      t.integer :os_id      , null: false
      t.string :official
      t.string :price       , null: false
      t.timestamps
    end
  end
end

class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :url
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end

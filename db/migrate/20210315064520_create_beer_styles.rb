class CreateBeerStyles < ActiveRecord::Migration[6.1]
  def change
    create_table :beer_styles do |t|
      t.references :beer, null: false, foreign_key: true
      t.references :style, null: false, foreign_key: true

      t.timestamps
    end
  end
end

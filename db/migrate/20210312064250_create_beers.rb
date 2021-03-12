class CreateBeers < ActiveRecord::Migration[6.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.int :review_time
      t.decimal :review_score
      t.decimal :alcohol_percent
      t.references :brewery, null: false, foreign_key: true

      t.timestamps
    end
  end
end

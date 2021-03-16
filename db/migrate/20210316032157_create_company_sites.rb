class CreateCompanySites < ActiveRecord::Migration[6.1]
  def change
    create_table :company_sites do |t|
      t.string :country
      t.string :full_address
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end

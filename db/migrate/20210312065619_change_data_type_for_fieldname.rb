class ChangeDataTypeForFieldname < ActiveRecord::Migration[6.1]
  def change
    change_column :beers, :review_time, :int
  end
end

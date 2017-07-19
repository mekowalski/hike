class AddHikerIdToTrek < ActiveRecord::Migration[5.0]
  def change
    add_column :treks, :hiker_id, :integer
  end
end

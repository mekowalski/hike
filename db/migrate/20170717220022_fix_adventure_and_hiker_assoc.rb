class FixAdventureAndHikerAssoc < ActiveRecord::Migration[5.0]
  def change
    add_column :adventures, :hiker_id, :integer
    remove_column :treks, :hiker_id
  end
end

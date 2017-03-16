class CreateAdventures < ActiveRecord::Migration[5.0]
  def change
    create_table :adventures do |t|
      t.integer :hiker_id
      t.integer :trek_id
      
      t.timestamps
    end
  end
end

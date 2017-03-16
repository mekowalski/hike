class CreateTreks < ActiveRecord::Migration[5.0]
  def change
    create_table :treks do |t|
      t.string :name
      t.string :state
      t.integer :elevation
      t.string :level

      t.timestamps
    end
  end
end

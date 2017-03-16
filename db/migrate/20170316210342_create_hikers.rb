class CreateHikers < ActiveRecord::Migration[5.0]
  def change
    create_table :hikers do |t|
      t.string :provider
      t.integer :uid
      t.string :name

      t.timestamps
    end
  end
end

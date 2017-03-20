class AddPwDigestAndEmailToHikers < ActiveRecord::Migration[5.0]
  def change
    add_column :hikers, :password_digest, :string
    add_column :hikers, :email, :string
  end
end

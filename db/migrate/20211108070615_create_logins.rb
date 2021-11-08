class CreateLogins < ActiveRecord::Migration[5.2]
  def change
    create_table :logins do |t|
      t.string :uid
      t.string :pass

      t.timestamps null: false
    end
  end
end

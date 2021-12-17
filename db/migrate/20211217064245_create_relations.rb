class CreateRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :relations do |t|
      t.integer :que_id
      t.integer :ans_id
      t.integer :user_id

      t.timestamps
    end
  end
end

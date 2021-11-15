class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :que_class
      t.string :que_title
      t.string :message
      t.integer :user_id

      t.timestamps
    end
  end
end

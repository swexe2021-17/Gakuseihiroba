class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :ans_message
      t.integer :user_id

      t.timestamps
    end
  end
end

class CreateOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :options do |t|
      t.references :question, null: false, foreign_key: true
      t.string "option1"
      t.string "option2"
      t.string "option3"
      t.string "option4"
      t.integer "correct_option"
      
      t.timestamps
    end
  end
end

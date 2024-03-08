class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.text :question
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.integer :correct_option

      t.timestamps
    end
  end
end

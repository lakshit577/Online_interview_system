class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      
      t.string :fullname
      t.string :email
      t.string :contact_number

      t.timestamps
    end
  end
end

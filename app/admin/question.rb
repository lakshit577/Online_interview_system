# app/admin/question.rb
ActiveAdmin.register Question do
    permit_params :question, :option1, :option2, :option3, :option4, :correct_option
  
    form do |f|
      f.inputs "Question Details" do
        f.input :question
        f.input :option1
        f.input :option2
        f.input :option3
        f.input :option4
        f.input :correct_option, as: :select, collection: [['Option 1', 1], ['Option 2', 2], ['Option 3', 3], ['Option 4', 4]]
      end
      f.actions
    end
  end
  
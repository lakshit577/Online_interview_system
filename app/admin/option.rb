ActiveAdmin.register Option do
    permit_params :question_id, :option1, :option2, :option3, :option4, :correct_option
  
    form do |f|
      f.inputs "Option Details" do
        f.input :question_id, as: :select, collection: Question.all.map { |q| [q.question, q.id] }
        f.input :option1
        f.input :option2
        f.input :option3
        f.input :option4
        f.input :correct_option
      end
      f.actions
    end
  end
  
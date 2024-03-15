

ActiveAdmin.register Question do
  permit_params :question

  form do |f|
    f.inputs "Question Details" do
      f.input :question
    end
    f.actions
  end
end

class Question < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        ["correct_option", "created_at", "id", "option1", "option2", "option3", "option4", "question", "updated_at"]
      end
end

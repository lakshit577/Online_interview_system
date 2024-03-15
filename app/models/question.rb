class Question < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        ["correct_option", "created_at", "id", "question", "updated_at"]
      end
      has_many :options
end
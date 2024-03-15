class Option < ApplicationRecord
  belongs_to :question
  validates :correct_option, presence: true, inclusion: { in: 1..4 }
end


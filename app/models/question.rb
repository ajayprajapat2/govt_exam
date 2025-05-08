class Question < ApplicationRecord
	validates :content, :option_a, :option_b, :option_c, :option_d, :correct_option, :content_type, presence: true
  	validates :correct_option, inclusion: { in: %w[a b c d] }
  	validates :content_type, inclusion: { in: ["Maths", "English", "GK", "Hindi", "Sanskrit", "Reasoning", "Science"] }
  	validates :content, uniqueness: true
end

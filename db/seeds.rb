# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


require 'csv'

CSV.foreach(Rails.root.join('db/questions.csv'), headers: true) do |row|
  Question.create!(
    content: row["content"],
    option_a: row["option_a"],
    option_b: row["option_b"],
    option_c: row["option_c"],
    option_d: row["option_d"],
    correct_option: row["correct_option"],
    content_type: row["content_type"]
  )
end

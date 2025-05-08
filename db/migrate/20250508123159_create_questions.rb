class CreateQuestions < ActiveRecord::Migration[7.2]
  def change
    create_table :questions do |t|
      t.string :content
      t.string :option_a
      t.string :option_b
      t.string :option_c
      t.string :option_d
      t.string :correct_option
      t.string :content_type

      t.timestamps
    end
  end
end

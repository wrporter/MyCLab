class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.integer :quiz_id
      t.integer :correct_answer_id

      t.timestamps
    end
  end
end

class CreateQuestionScores < ActiveRecord::Migration
  def change
    create_table :question_scores do |t|
      t.decimal :score
      t.integer :user_id
      t.integer :test_id
      t.string :ls

      t.timestamps
    end
  end
end

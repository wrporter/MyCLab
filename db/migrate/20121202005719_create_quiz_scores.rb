class CreateQuizScores < ActiveRecord::Migration
  def change
    create_table :quiz_scores do |t|
      t.decimal :score
      t.integer :user_id
      t.integer :test_id

      t.timestamps
    end
  end
end

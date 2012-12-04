class NewUser < ActiveRecord::Migration
  def change
 	rename_column :users, :name, :real_name 
	add_column :users, :user_name, :string
	remove_column :question_scores, :ls
	drop_table :tests
  end
end

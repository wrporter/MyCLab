class NewQuestion < ActiveRecord::Migration
  def change
  	change_column :questions, :question, :text, :limit => nil
  end
end

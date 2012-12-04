class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.integer :points_avail
      t.timestamp :date
      t.interger :user_id
      t.timestamps
    end
  end
end

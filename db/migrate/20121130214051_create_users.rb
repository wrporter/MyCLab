class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :real_name
      t.string :user_name
      t.string :password
      t.timestamp :last_login

      t.timestamps
    end
  end
end

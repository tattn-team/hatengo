class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string  :email,     null: false
      t.string  :password,  null: false
      t.string  :username,  null: false

      t.timestamps null: false
    end
  end
end

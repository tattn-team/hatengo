class CreateKomas < ActiveRecord::Migration
  def change
    create_table :komas do |t|
      t.integer :yonkoma_id, null: false
      t.integer :index, null: false

      t.timestamps null: false
    end
  end
end

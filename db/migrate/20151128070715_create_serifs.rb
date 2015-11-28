class CreateSerifs < ActiveRecord::Migration
  def change
    create_table :serifs do |t|
      t.integer :koma_id, null: false
      t.string :str, null: false
      t.integer :x, default: 0
      t.integer :y, default: 0
      t.integer :w, default: 80
      t.integer :h, default: 130

      t.timestamps null: false
    end
  end
end

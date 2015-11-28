class CreateImgs < ActiveRecord::Migration
  def change
    create_table :imgs do |t|
      t.integer :koma_id, null: false
      t.string :url, null: false
      t.integer :x, default: 0
      t.integer :y, default: 0
      t.integer :w, default: 300
      t.integer :h, default: 200

      t.timestamps null: false
    end
  end
end

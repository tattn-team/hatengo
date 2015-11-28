class CreateYonkomas < ActiveRecord::Migration
  def change
    create_table :yonkomas do |t|
      t.timestamps null: false
    end
  end
end

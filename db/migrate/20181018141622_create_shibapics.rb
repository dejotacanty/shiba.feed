class CreateShibapics < ActiveRecord::Migration[5.2]
  def change
    create_table :shibapics do |t|
      t.string :shiba_name
      t.integer :picture_id
      t.text :descripton

      t.timestamps
    end
  end
end

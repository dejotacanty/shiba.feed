class RemovePictureIdFromShibapics < ActiveRecord::Migration[5.2]
  def change
    remove_column :shibapics, :picture_id, :integer
  end
end

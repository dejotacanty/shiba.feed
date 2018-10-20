class AddPictureToShibapic < ActiveRecord::Migration[5.2]
  def change
    add_column :shibapics, :full_file_path, :string
    add_column :shibapics, :file_name, :string
    add_column :shibapics, :file_ext, :string
    add_column :shibapics, :file_dir, :string
  end
end

class ChangeImageBackToString < ActiveRecord::Migration[6.0]
  def change
    change_column :blogs, :image, :string
    rename_column :blogs, :image, :main_image
  end
end

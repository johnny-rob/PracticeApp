class ChangeImageToTextInBlog < ActiveRecord::Migration[6.0]
  def change
    change_column :blogs, :image, :text
  end
end

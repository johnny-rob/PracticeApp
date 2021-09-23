class ChangeColumnOrder < ActiveRecord::Migration[6.0]
  def change
    change_column :blogs, :main_image, :string, after: :body
  end
end

class AddFandomImageToFandom < ActiveRecord::Migration[7.0]
  def change
    add_column :fandoms, :fandom_image, :string
  end
end

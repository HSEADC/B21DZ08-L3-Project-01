class AddDescriptionToFandom < ActiveRecord::Migration[7.0]
  def change
    add_column :fandoms, :description, :text
  end
end

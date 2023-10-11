class CreateFandoms < ActiveRecord::Migration[7.0]
  def change
    create_table :fandoms do |t|
      t.string :title
      t.integer :author_id
      t.integer :category_id
      t.integer :character_id

      t.timestamps
    end
  end
end

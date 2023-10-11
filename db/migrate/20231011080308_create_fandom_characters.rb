class CreateFandomCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :fandom_characters do |t|
      t.string :name
      t.integer :fandom_id

      t.timestamps
    end
  end
end

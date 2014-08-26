class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :name
      t.string :brand
      t.integer :box
      t.string :story
      t.string :photo_path
      t.string :string

      t.timestamps
    end
  end
end

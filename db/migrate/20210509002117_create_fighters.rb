class CreateFighters < ActiveRecord::Migration[6.1]
  def change
    create_table :fighters do |t|
      t.string :image
      t.string :alias 
      t.string :race
      t.integer :hp

      t.timestamps
    end
  end
end

class AddSpecialtyToFighters < ActiveRecord::Migration[6.1]
  def change
    add_column :fighters, :specialty, :string
  end
end

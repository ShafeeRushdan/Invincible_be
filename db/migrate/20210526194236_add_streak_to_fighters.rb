class AddStreakToFighters < ActiveRecord::Migration[6.1]
  def change
    add_column :fighters, :streak, :integer
  end
end

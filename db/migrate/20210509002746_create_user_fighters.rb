class CreateUserFighters < ActiveRecord::Migration[6.1]
  def change
    create_table :user_fighters do |t|
      t.integer :user_id
      t.integer :fighter_id
      t.integer :highscore

      t.timestamps
    end
  end
end

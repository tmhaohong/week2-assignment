class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :owner
      t.integer :friend

      t.timestamps null: false
    end
  end
end

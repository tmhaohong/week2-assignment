class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :sender
      t.integer :receiver
      t.text :body
      t.boolean :isRead

      t.timestamps null: false
    end
  end
end

class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :friend
      t.integer :friended

      t.timestamps
    end
  end
end

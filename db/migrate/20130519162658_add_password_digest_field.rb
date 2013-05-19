class AddPasswordDigestField < ActiveRecord::Migration
  def up
  	 add_column :users, :password_digest, :string
  	 remove_column :users, :address_county
  	 add_column :users, :address_state, :string
  end

  def down
  	 remove_column :users, :password_digest
  	 add_column :users, :address_county
  	 remove_column :users, :address_state
  end
end

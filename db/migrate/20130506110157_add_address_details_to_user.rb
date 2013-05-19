class AddAddressDetailsToUser < ActiveRecord::Migration
def up
    add_column :users, :address_street_one, :string
    add_column :users, :address_street_two, :string
    add_column :users, :address_street_three, :string
    add_column :users, :address_city, :string
    add_column :users, :address_county, :string
    add_column :users, :address_postcode, :string
    add_column :users, :address_country, :string
    add_column :users, :mobile_phone, :integer

  end
 
  def down
    remove_column :users, :address_street_one
    remove_column :users, :address_street_two
    remove_column :users, :address_street_three
    remove_column :users, :address_city
    remove_column :users, :address_county
    remove_column :users, :address_postcode
    remove_column :users, :address_country
    remove_column :users, :mobile_phone
  end
end

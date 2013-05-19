class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :username
      t.date :dob
      t.string :password
      t.string :profile_image

      t.timestamps
    end
  end
end

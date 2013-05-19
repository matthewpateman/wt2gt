class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :user_id
      t.string :name
      t.integer :price
      t.string :price_currency
      t.integer :merchant_id
      t.string :url
      t.boolean :private

      t.timestamps
    end
  end
end

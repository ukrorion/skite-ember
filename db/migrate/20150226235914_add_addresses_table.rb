class AddAddressesTable < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :region
      t.string :city
      t.string :street
      t.string :house_number
      t.string :apartment_number
      t.string :postal_code
      t.references :user, index: {name: 'index_addresses_on_user_id'}
      t.timestamps
    end
  end
end

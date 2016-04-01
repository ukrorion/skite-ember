class AddAddressesTable < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :region, limit: 100
      t.string :city, limit: 100
      t.string :street, limit: 100
      t.string :house_number, limit: 20
      t.string :apartment_number, limit: 20
      t.string :postcode, limit: 20
      t.references :user, index: true, foreing_key: true
      t.timestamps
    end
  end
end

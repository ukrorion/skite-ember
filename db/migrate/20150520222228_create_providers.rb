class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.integer :bank_account
      t.integer :checking_account
      t.references :user, index: true, foreing_key: true
      t.references :address, index: true, foreing_key: true
      t.timestamps
    end
  end
end

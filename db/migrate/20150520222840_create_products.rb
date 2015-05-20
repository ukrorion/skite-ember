class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.boolean :editable
      t.references :provider, index: true, foreing_key: true
      t.references :service, index: true, foreing_key: true
      t.timestamps
    end
  end
end

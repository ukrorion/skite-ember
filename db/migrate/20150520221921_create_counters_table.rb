class CreateCountersTable < ActiveRecord::Migration
  def change
    create_table :counters do |t|
      t.references :address, index: true, foreing_key: true
      t.references :product, index: true, foreing_key: true
      t.timestamps
    end
  end
end

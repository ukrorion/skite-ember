class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.float :value
      t.date :end_date
      t.references :product, index: true, foreing_key: true
    end
  end
end

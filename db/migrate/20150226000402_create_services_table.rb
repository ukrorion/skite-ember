class CreateServicesTable < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name, limit: 50
      t.timestamps
    end
  end
end

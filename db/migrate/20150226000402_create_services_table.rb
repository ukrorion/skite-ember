class CreateServicesTable < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :s_type
      t.timestamps
    end
  end
end

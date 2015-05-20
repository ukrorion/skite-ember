class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name, limit: 50
      t.integer :priority
      t.boolean :active

      t.timestamps null: false
    end
  end
end

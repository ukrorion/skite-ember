class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :name, limit: 50
      t.index :name, unique: true
      t.integer :priority
      t.string :description
      t.boolean :active

      t.timestamps null: true
    end
  end
end

class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :name
      t.string :resource_type
      t.boolean :own
      t.integer :price

      t.timestamps
    end
  end
end

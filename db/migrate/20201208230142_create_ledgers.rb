class CreateLedgers < ActiveRecord::Migration[6.0]
  def change
    create_table :ledgers do |t|
      t.references :project, null: false, foreign_key: true
      t.references :resource, null: false, foreign_key: true
      t.integer :qty

      t.timestamps
    end
  end
end

class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :name, null: false
      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end

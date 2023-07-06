class CreateSnacks < ActiveRecord::Migration[7.0]
  def change
    create_table :snacks do |t|
      t.string :name, null: false
      t.integer :quantity, null: false
      t.float :price, null: false

      t.timestamps
    end
  end
end

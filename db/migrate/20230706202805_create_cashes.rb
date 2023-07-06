class CreateCashes < ActiveRecord::Migration[7.0]
  def change
    create_table :cashes do |t|
      t.string :name, null: false
      t.integer :quantity, null: false
      t.float :value, null: false

      t.timestamps
    end
  end
end

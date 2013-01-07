class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :type
      t.string :options
      t.text :instructions

      t.timestamps
    end
  end
end

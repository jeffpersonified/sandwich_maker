class CreateSandwiches < ActiveRecord::Migration
  def change
    create_table :sandwiches do |t|
      t.string :type
      t.integer :user_id

      t.timestamps
    end
  end
end

class AddSandwichIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sandwich_id, :integer
  end
end

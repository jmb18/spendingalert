class AddMxAccountToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :guid, :string
  end
end

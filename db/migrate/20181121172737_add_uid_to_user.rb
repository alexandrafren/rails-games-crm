class AddUidToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :uid, :integer
  end
end

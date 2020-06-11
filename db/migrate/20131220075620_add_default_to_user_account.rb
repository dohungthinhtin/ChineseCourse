class AddDefaultToUserAccount < ActiveRecord::Migration[4.2]
  def change
    change_column :users, :account, :string, default: "member"
  end
end

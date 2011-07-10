class ChangeColumnTypeForUsersReferal < ActiveRecord::Migration
  def self.up
    change_column :users, :referral, :string
  end

  def self.down
    change_column :users, :referral, :text
  end
end

class AddOpportunityIdAndUserIdToApplikation < ActiveRecord::Migration
  def self.up
    add_column :applikations, :opportunity_id, :integer
    add_column :applikations, :user_id, :integer
  end

  def self.down
    remove_column :applikations, :user_id
    remove_column :applikations, :opportunity_id
  end
end

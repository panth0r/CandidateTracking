class AddLocationToOpportunities < ActiveRecord::Migration
  def self.up
    add_column :opportunities, :location, :string
  end

  def self.down
    remove_column :opportunities, :location
  end
end

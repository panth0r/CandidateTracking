class CreateSearchOpportunities < ActiveRecord::Migration
  def self.up
    create_table :search_opportunities do |t|
      t.string :keywords
      t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :search_opportunities
  end
end

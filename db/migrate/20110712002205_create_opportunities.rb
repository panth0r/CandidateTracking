class CreateOpportunities < ActiveRecord::Migration
  def self.up
    create_table :opportunities do |t|
      t.string :title
      t.text :responsibilities
      t.text :overview
      t.text :qualifications

      t.timestamps
    end
  end

  def self.down
    drop_table :opportunities
  end
end

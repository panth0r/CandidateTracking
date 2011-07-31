class AddEmailToApplikation < ActiveRecord::Migration
  def self.up
    add_column :applikations, :email, :string
  end

  def self.down
    remove_column :applikations, :email
  end
end

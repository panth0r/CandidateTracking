class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :fname
      t.string :mname
      t.string :lname
      t.string :pnum
      t.text :address
      t.text :referral
      t.text :resume_txt
      t.binary :resume_bin
      t.text :cletter

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end

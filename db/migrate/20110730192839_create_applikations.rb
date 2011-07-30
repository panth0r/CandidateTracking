class CreateApplikations < ActiveRecord::Migration
  def self.up
    create_table :applikations do |t|
      t.string :fname
      t.string :mname
      t.string :lname
      t.string :pnum
      t.text :address
      t.string :referral
      t.text :resume_txt
      t.binary :resume_bin
      t.text :cleter

      t.timestamps
    end
  end

  def self.down
    drop_table :applikations
  end
end

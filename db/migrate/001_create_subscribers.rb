class CreateSubscribers < ActiveRecord::Migration
  def self.up
    create_table :subscribers do |t|
      t.string :email
      t.timestamps null: false
    end
  end

  def self.down
    drop_table :subscribers
  end
end

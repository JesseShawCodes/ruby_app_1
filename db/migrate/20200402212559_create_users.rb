class CreateUsers < ActiveRecord::Migration[6.0]
  def up
    create_table :users do |t|
      puts "Creating Users Table"
      t.column "first_name", :string, :limit => 25
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 40
      
      t.timestamps
    end
  end

  def down
    puts "Dropping Users Table"
    drop_table :users
  end
end

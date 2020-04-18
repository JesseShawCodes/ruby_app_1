class CreateAdminUsers < ActiveRecord::Migration[6.0]
  def up
    create_table :admin_users do |t|
      puts "Creating Admin Users Table"
      t.column "first_name", :string, :limit => 25
      t.string "last_name", :limit => 50
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 40
      t.string "user_name", :limit => 40

      t.timestamps
    end
  end

  def down
    puts "Dropping Admin Users Table"
    drop_table :admin_users
  end
end

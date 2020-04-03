class CreateSubjects < ActiveRecord::Migration[6.0]
  def up
    create_table :subjects do |t|
      puts "Create Subjects Table"
      t.string "name"
      t.integer "position"
      t.boolean "visible", :default => false
      t.timestamps
    end
  end

  def down
    puts "Drop Subjects Table"
    drop_table :subjects
  end
end

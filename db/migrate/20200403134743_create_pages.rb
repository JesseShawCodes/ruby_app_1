class CreatePages < ActiveRecord::Migration[6.0]
  def up
    create_table :pages do |t|
      puts "Create Pages Table"
      t.integer "subject_id"
      t.string "name"
      t.string "permalink"
      t.integer "position"
      t.boolean "visible", :default => false

      t.timestamps
    end
    add_index("pages", "subject_id")
    add_index("pages", "permalink")
  end

  def down
    puts "Drop Pages Table"
    drop_table :pages
  end
end

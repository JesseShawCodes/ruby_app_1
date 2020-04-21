class CreateSections < ActiveRecord::Migration[6.0]
  def up
    create_table :sections do |t|
      puts "Create Sections Table"
      t.integer "page_id"
      t.string "name"
      t.integer "position"
      t.boolean "visible", :default => false
      t.string "content_type"
      t.text "content"

      t.timestamps
    end
    add_index("sections", "page_id")
  end

  def down
    puts "Drop Sections Table"
    drop_table :sections
  end
end
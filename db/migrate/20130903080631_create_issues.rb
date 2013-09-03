class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :volume
      t.integer :number
      t.integer :edition_number
      t.string :edition_label
      t.date :date
      t.date :date_printed
      t.boolean :present
      t.text :phys_description
      t.integer :num_sections
      t.integer :num_pages
      t.text :missing_pages
      t.text :duplicate_pages
      t.text :notes

      t.timestamps
    end
  end
end

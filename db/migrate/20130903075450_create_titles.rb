class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.integer :lccn
      t.string :title
      t.string :city_publication
      t.integer :beg_date
      t.date :end_date
      t.string :issue_edition_pattern

      t.timestamps
    end
  end
end

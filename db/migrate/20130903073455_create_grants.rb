class CreateGrants < ActiveRecord::Migration
  def change
    create_table :grants do |t|
      t.integer :beg_year
      t.integer :end_year
      t.string :org
      t.text :notes

      t.timestamps
    end
  end
end

class CreateAbbrvTitles < ActiveRecord::Migration
  def change
    create_table :abbrv_titles do |t|
      t.string :name

      t.timestamps
    end
  end
end

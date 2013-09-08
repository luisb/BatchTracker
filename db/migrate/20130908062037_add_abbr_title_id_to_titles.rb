class AddAbbrTitleIdToTitles < ActiveRecord::Migration
  def change
    add_column :titles, :abbrv_title_id, :integer
    add_index :titles, :abbrv_title_id
  end
end

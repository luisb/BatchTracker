class ChangeBegDateEndDateTypesOnTitles < ActiveRecord::Migration
  def up
  	change_column :titles, :beg_date, :string
  	change_column :titles, :end_date, :string
  end

  def down
  	change_column :titles, :beg_date, :integer
  	change_column :titles, :end_date, :date
  end
end

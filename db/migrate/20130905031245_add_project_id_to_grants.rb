class AddProjectIdToGrants < ActiveRecord::Migration
  def change
    add_column :grants, :project_id, :integer
  end
end

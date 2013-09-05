class RemoveOrgFromGrants < ActiveRecord::Migration
  def up
    remove_column :grants, :org
  end

  def down
    add_column :grants, :org, :string
  end
end

class RenameFields < ActiveRecord::Migration
  def self.up
	  rename_column :people, :FirstName, :first_name
	  rename_column :people, :LastName, :last_name
  end

  def self.down
	  rename_column :people, :first_name, :FirstName
	  rename_column :people, :last_name, :LastName
  end
end

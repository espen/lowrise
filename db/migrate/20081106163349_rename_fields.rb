class RenameFields < ActiveRecord::Migration
  def self.up
	rename_column :people, :FirstName, :first_name
	rename_column :people, :LastName, :last_name
  end

  def self.down
  end
end

class AddCompanyToPerson < ActiveRecord::Migration
  def self.up
    add_column :people, :company_id, :integer
  end

  def self.down
    remove_column :people, :company_id
  end
end

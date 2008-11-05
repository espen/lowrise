class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :FirstName
      t.string :LastName

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end

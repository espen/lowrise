class CreatePhoneNumber < ActiveRecord::Migration
  def self.up
    create_table :phone_numbers do |t|
      t.references :person, :null => true
      t.references :company, :null => true
      t.string :number
      t.integer :phone_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :phone_numbers
  end
end

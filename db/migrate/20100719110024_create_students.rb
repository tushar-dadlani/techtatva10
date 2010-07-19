class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :name
      t.string :college_name
      t.string :college_id
      t.string :email_address
      t.string :contact_number

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end

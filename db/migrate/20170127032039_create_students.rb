class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :sname
    	t.integer :roll_no
    	t.string :sgrade 
        t.timestamps null: false
    end
  end
end

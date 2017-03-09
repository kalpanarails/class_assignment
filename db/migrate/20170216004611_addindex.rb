class Addindex < ActiveRecord::Migration
  def change
	  add_index :students,:roll_no
  end
end

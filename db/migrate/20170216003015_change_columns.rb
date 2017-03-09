class ChangeColumns < ActiveRecord::Migration
  def change
	  add_column:books,:price,:decimal
	  rename_column:books,:year,:year_of_publication
	  remove_timestamps:students
  end
end

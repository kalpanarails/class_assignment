class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.references :company, index: true

      t.timestamps null: false
    end
    add_foreign_key :employees, :companies
  end
end

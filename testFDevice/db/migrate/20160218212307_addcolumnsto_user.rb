class AddcolumnstoUser < ActiveRecord::Migration
  def change
  	add_column :Users, :user_name, :string
  	add_column :Users, :first_name, 	:string
  	add_column :Users, :last_name, 	:string
  	add_column :Users, :address_line1, 	:string
  	add_column :Users, :address_line2, 	:string
  	add_column :Users, :City, 	:string
  	add_column :Users, :Zip, 	:integer
  	add_column :Users, :country, 	:string 
  	add_column :Users, :user_type, :string
  	add_index :Users, :user_name, :unique => true
  end
end

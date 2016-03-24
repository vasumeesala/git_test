class AddStatetoUsers < ActiveRecord::Migration
  def change
  	add_column :Users, :state, :string
  end
end

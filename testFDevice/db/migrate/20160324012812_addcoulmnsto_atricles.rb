class AddcoulmnstoAtricles < ActiveRecord::Migration
  def change
  	add_column :articles, :uid, :string
  	add_column :articles, :vtitle, :string
  end
end

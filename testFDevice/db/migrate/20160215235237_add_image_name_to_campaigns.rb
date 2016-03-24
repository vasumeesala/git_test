class AddImageNameToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :img_name, :string
  end
end

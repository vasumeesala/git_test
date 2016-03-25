class AddUseridtoCampaigns < ActiveRecord::Migration
  def change
  	add_column :Campaigns, :user_id, :integer
  end
end

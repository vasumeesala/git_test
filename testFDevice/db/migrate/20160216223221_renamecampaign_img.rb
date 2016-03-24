class RenamecampaignImg < ActiveRecord::Migration
  def change
  	rename_column :Campaigns, :campaignimg, :campimg
  end
end

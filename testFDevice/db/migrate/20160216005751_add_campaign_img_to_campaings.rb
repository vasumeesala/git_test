class AddCampaignImgToCampaings < ActiveRecord::Migration
  def change
    add_column :campaigns, :campaignimg, :string
  end
end

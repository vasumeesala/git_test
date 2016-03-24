class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :campaign_name
      t.string :campaign_description
      t.integer :reward
      t.string :tnc
      t.date :campaign_startdate
      t.date :campaign_enddate
      t.string :tags

      t.timestamps
    end
  end
end

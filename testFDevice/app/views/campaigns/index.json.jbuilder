json.array!(@campaigns) do |campaign|
  json.extract! campaign, :id, :campaign_name, :campaign_description, :reward, :tnc, :campaign_startdate, :campaign_enddate, :tags
  json.url campaign_url(campaign, format: :json)
end

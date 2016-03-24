class FileUploadController < ApplicationController
	def index
		 @uploader = Campaign.find(params[:id]).campimg
		 @campaign = Campaign.find(params[:id])
      	 @uploader.success_action_redirect = campaign_url(@campaign)
	end
end

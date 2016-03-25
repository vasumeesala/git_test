class WelcomeController < ApplicationController
	def index
		@article = Article.paginate(page: params[:page], per_page: 5)
		@campaign = Campaign.all
	end
end

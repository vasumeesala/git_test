class VideouploadController < ApplicationController
  def index
  		@vuploader = Article.find(params[:id]).video
		@article = Article.find(params[:id])
      	 @vuploader.success_action_redirect = article_url(@article)
  end
end

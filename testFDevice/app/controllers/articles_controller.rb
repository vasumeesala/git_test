class ArticlesController < ApplicationController
	before_filter :authenticate_user!, except:[:index, :show ]
	
	def index
		@article = Article.all
		@campaign = Campaign.all
		@videos = Yt::Video.new id: '5Tzg9173xC4'
		
	end

	def show
	@article = Article.find(params[:id])
	end

	def new
		@article = current_user.articles.build
		@campaign_id = params[:campaign_id]

	end

	def create
		@article = @article = current_user.articles.build(article_params)
		if (@article.save)
			redirect_to @article
		else
			render 'new'
		end
	end

	def edit
		@article = Article.find(params[:id])
	end	
	def update
		@article = Article.find(params[:id])
		if @article.update(article_params)
    		redirect_to @article
  		else
    		render 'edit'
  		end
	end
	def destroy
		puts "destroy"
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to articles_path
	end
				
	private
	def article_params
		params.require(:article).permit(:title,:text, :campaign_id, :key)
	end

end

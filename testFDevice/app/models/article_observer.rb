class ArticleObserver < ActiveRecord::Observer
	def before_save(resource)
		video = Yt::Video.new url: "https://www.youtube.com/watch?v=bx5BUbiIXFw"
		resource.uid = video.id
		
		
	rescue Yt::Errors::NoItems
		resource.title = ''
	end
end

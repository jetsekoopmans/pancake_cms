class NewsController < ApplicationController
  def index
  	@pages = Pages.where(ancestry: nil).order(position: :asc)
  	#@news = News.order(:date).page params[:page].per(3)
    @news = News.order("date desc").page( params[:page]).per(4)
    #@news = News.paginate(page: params[:page], :per_page => 3, :order => 'date DESC' )
  end
  def show
  	@pages = Pages.where(ancestry: nil).order(position: :asc)
  	@news = News.find_by(url: params[:url]) 
  	@title = @news.title
  	@date = @news.date.to_date.to_formatted_s(:long_ordinal)
  	@content = @news.content.html_safe
  end
end

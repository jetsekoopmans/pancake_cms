class PagesController < ApplicationController
  def index
  	@pages = Pages.where(ancestry: nil && '0' ).order(position: :desc)
    #@pages = Pages.all.order(position: :desc)
  	if @page = Pages.find_by(url: params[:url])
    elsif @page = Pages.find_by(url: 'home')
    else @page = Pages.first
    end
		
    @title = @page.title
		@meta_description = @page.meta_description
		@meta_keywords = @page.meta_keywords
		@template = 'templates/' + @page.template
		@contents = Content.where(pages_id: @page.id)
  end
end

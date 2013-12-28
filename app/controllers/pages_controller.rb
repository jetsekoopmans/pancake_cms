class PagesController < ApplicationController
  def index
  	@pages = Pages.all(:order => 'position')
  	
  	if @page = Pages.find_by(url: params[:url]) 
    else @page = Pages.first
    end
		
    @title = @page.title
		@meta_description = @page.meta_description
		@meta_keywords = @page.meta_keywords
		@template = 'templates/' + @page.template
		@contents = Content.where(pages_id: @page.id)
  end
end

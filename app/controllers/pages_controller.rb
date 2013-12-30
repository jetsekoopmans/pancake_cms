class PagesController < ApplicationController
  def index
  	@pages = Pages.where(ancestry: nil).order(position: :asc)
    #@pages = Pages.where('ancestry=? OR ancestry=?', '0', nil)
    #@pages = Pages.all.order(position: :desc)
  	if @page = Pages.find_by(url: params[:url])
    elsif @page = Pages.find_by(url: 'home')
    else @page = Pages.first
    end
		
    @title = @page.title
		@meta_description = @page.meta_description
		@meta_keywords = @page.meta_keywords
		@template = 'templates/' + @page.template
		@contents = Section.where(pages_id: @page.id)
  end
end

class PagesController < ApplicationController
  def index
  	#@page  = Pages.find_by(title: params[:id])
  	#@page = Pages.find(params[:id])
  	@page = Pages.find_by(url: params[:url])
  	@title = @page.title
  	@content = ERB.new(Pages.first.content).result.html_safe
  	@template = 'templates/' + @page.template
  end
end

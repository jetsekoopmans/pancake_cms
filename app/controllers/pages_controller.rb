class PagesController < ApplicationController
  def index
  	#@page  = Pages.find_by(title: params[:id])
  	#@page = Pages.find(params[:id])
  	@page = Pages.find_by(title: params[:url])
  	@title = @page.title
  	@content = ERB.new(Pages.first.content).result.html_safe
  	@template = 'templates/template1'
  end
end

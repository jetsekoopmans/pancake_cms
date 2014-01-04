class ApplicationController < ActionController::Base
  @pages = Pages.all(:order => 'position')
  @albums = Album.first
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

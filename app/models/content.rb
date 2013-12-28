class Content < ActiveRecord::Base
  #validates :pages_id, :presence => true
  belongs_to :pages, :inverse_of => :content
end

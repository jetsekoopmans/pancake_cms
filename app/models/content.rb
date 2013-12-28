class Content < ActiveRecord::Base
  belongs_to :pages, :inverse_of => :content
end

class Section < ActiveRecord::Base
  belongs_to :pages, :inverse_of => :section
end

module PagesHelper
  	def get_content(x)
    	if @contents[x].present?
	   		return @contents[x].content.html_safe
		else
			return ""
		end
  	end
end

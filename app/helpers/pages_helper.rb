module PagesHelper
  	def get_section(x)
    	if @sectinos[x].present?
	   		return @sectinos[x].content.html_safe
		else
			return ""
		end
  	end
end

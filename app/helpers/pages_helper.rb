module PagesHelper
  	def get_section(x)
    	if @sections[x].present?
	   		return @sections[x].content.html_safe
		else
			return ""
		end
  	end
end

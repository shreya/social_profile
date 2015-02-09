module VisitorsHelper
	def format_date(doj)
		DateTime.parse(doj).strftime("%m/%d/%Y")
	end

	def owner_found?(list_obj)
		list_obj.is_a?(Array)
	end
end

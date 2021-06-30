class DashboardsController < SecureController
	def show
		@dashboard = HomeDashboard.new
	end
end

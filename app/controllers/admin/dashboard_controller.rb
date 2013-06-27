class Admin::DashboardController < Admin::BaseController
  layout "admin"

  def index
    @entries = Entry.limit(10)
    @events = Event.limit(10)
  end
end

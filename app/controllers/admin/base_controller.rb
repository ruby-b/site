class Admin::BaseController < ApplicationController
  layout "admin"
  before_filter :authenticate_admin!

  MAIN_NAV = [
    {:name => "Event",  :controller => "Admin::EventsController",  :href => "/admin/events"},
  ]
end


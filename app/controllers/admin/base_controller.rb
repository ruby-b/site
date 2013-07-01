class Admin::BaseController < ApplicationController
  layout "admin"
  before_filter :authenticate_refinery_user!

  MAIN_NAV = [
    {:name => "Event",  :controller => "Admin::EventsController",  :href => "/admin/forums"},
  ]
end


# coding: utf-8
class Admin::BaseController < ApplicationController
  layout "admin"
  before_filter :authenticate_refinery_user!
  before_filter :manager_required

  MAIN_NAV = [
    {:name => "Event",  :controller => "Admin::EventsController",  :href => "/admin/forums"},
  ]

  private
  def manager_required
    if current_refinery_user.manager_flag
    else
      redirect_to "/refinery/dashboard", alert: "その操作を許可されたユーザではありません。"
    end
  end
end


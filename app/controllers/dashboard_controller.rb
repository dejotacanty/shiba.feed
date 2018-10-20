class DashboardController < ApplicationController
  def index
  	render_cell(cell: Dashboard::Cell::Index)
  end
end
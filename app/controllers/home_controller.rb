require 'rgeo'

class HomeController < ApplicationController
  def index
  end

  def display_markers_in_bounds
    @points = MySpatialTable.all
  end
end

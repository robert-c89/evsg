class HomeController < ApplicationController

  def index
    @page = Page.last
  end

end

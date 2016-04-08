class Admin::PagesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @pages = Page.all
  end


  def new
    @chapter = Chapter.new
    @page = Page.new
  end

  def create
    @page = Page.create page_params

    if @page.save!
      redirect_to admin_pages_path
    else
    end
  end


  private

    def page_params
      params.require(:page).permit(
        :title,
        :hover_text,
        :image,
        :chapter_id
      )
    end

end

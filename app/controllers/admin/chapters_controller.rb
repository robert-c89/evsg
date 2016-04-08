class Admin::ChaptersController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource


  def create
    @chapter = Chapter.create chapter_params

    if @chapter.save!
      redirect_to new_admin_page_path
    else
    end
  end


  private

    def chapter_params
      params.require(:chapter).permit(
        :number,
        :name,
        :image
      )
    end
end

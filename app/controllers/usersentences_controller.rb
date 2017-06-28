class UsersentencesController < ApplicationController
  def new
    @story = Story.find(params[:story_id])
    @usersentence = @story.usersentences.new
  end

  def create
    @story = Story.find(params[:story_id])

    @usersentence = @story.usersentences.new(usersentence_params)
    if @usersentence.save
      redirect_to story_path(@usersentence.story)
    else
      render :new
    end
  end

  private
  def usersentence_params
    params.require(:usersentence).permit(:image, :user, :sentence)
  end


end

class PagesController < ApplicationController
  def askthecoach
    if params[:questions]
      @questions = @questions.select { |question| question.start_with?(params[:questions]) }
    end
  end

  def coachanswers
    @coachanswers = ""
    @askthecoach = params[:questions]
    if @askthecoach == "I am going to work right now!"
      @coachanswers = "Great!"
    elsif @askthecoach.end_with?("?")
      @coachanswers = "Silly question, get dressed and go to work!"
    else
      @coachanswers = "I don't care, get dressed and go to work!"
    end
  end
end

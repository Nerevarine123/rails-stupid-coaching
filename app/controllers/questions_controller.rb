class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == 'I am going to work right now!'
      @answer = 'Great!'
    elsif @question == 'I AM GOING TO WORK RIGHT NOW!'
      @answer = ''
    elsif @question.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question == @question.upcase
      @answer = "I can feel your motivation! I don't care get dressed and go to work"
    else
      @answer = "I don't care, get dressed and go to work"
    end
  end
end

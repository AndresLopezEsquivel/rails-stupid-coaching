class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = ask_to_coach(@question)
  end

  def ask_to_coach(question)
    if question == "I am going to work right now!"
      ""
    elsif question.include? "?"
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end

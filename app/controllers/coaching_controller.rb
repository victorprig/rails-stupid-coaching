class CoachingController < ApplicationController


  ANSWERS = [
    { query: "bonjour", coachanswer: "tais toi fils" },
    { query: "hello", coachanswer: "tais toi fils" }
  ]

  def answer
    @question = params[:query]
    @answers = ANSWERS.select {|r| r[:query] == @question }
  end

  def ask
  end
end


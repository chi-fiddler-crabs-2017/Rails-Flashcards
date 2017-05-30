class GuessesController < ApplicationController
  def create

    @card = Card.find(params[:card_id])
    @guess = Guess.create(guess_text: params[:guess][:guess_text], card_id: @card.id, round_id: session[:round_id])

    if @card.answer == @guess.guess_text
      @guess.correct = true
    else
      @guess.correct = false
    end
    @guess.save

    redirect_to card_guess_path(@card.id, @guess.id)
  end

  def show
    # p session[:round_id]
     @card = Card.find(params[:card_id])
     @guess = Guess.find(params[:id])
     @round = Round.find(session[:round_id])

  end
end

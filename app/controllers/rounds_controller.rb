class RoundsController < ApplicationController

  def create
    deck = Deck.find(params[:deck_id])
    @round = Round.create(user_id: 1, deck: deck)
    redirect_to card_path(deck.cards.first)
    session[:round_id] = @round.id
  end

end

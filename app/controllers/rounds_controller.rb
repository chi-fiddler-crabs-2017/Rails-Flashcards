class RoundsController < ApplicationController

  def create
    @round = Round.create(user_id: 1, deck_id: params[:deck_id])
  end

end

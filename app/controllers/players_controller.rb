class PlayersController < ApplicationController
    def create
		@game = Game.find_by_slug(params[:code])
		@player = @game.players.create(params[:player].permit(:name, :hp, :initiative, :languages, :perc, :inv, :ins, :armor, :conc, :effect_list, :effect, { effect_ids: [] }, :effect_ids))
		redirect_to game_path(@game)
	end
end

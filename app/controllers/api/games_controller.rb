class Api::GamesController < ActionController::API
  def create
    @game = Game.find_or_initialize_by(external_id: params[:game][:id])
    @game.timeout = params[:game][:timeout]
    @game.width = params[:board][:width]
    @game.height = params[:board][:height]
    @game.snake_count = params[:board][:snakes].length
    @game.mode = params.dig(:game, :ruleset, :name) || 'standard'
    @game.save!

    @participant = GameParticipant.find_or_initialize_by(game_id: @game.id, snake_id: params[:id])
    @participant.save!
  end

  def destroy
    @game = Game.find_by(external_id: params[:game][:id])
    @game.ended_at = Time.current
    @game.save!
  end
end

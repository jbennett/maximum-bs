class Api::MovesController < ActionController::API
  def create
    render json: { move: 'up', shout: 'Going up!' }
  end
end

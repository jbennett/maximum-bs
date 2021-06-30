class Api::SnakesController < ActionController::API
  def show
    @snake = Snake.find(params[:id])
  end
end

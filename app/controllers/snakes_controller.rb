class SnakesController < SecureController
  def index
    @snakes = Snake.alphabetical_order
  end

  def new
    @snake = Snake.new
  end

  def create
    @snake = Snake.new(snake_params)

    if @snake.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @snakes = Snake.alphabetical_order
    @snake = Snake.find params[:id]
  end

  def edit
    @snake = Snake.find(params[:id])
  end

  def update
    @snake = Snake.find(params[:id])
    @snake.assign_attributes(snake_params)

    if @snake.save
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def snake_params
    params.require(:snake).permit(
      :name, :color, :head, :tail
    )
  end
end

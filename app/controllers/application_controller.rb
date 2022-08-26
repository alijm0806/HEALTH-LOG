class ApplicationController < ActionController::API
  def index
    vitamins = Vitamin.all
    render json: vitamins.as_json
  end

  def show
    vitamin = Vitamin.find_by(id: params[:id])

    render json: vitamin.as_json
  end
end

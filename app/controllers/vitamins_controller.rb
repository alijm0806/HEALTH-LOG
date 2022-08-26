class VitaminsController < ApplicationController
  def index
    vitamins = Vitamin.all
    render json: vitamins.as_json
  end

  def show
    if current_user
      vitamin = Vitamin.find_by(id: params[:id])

      render json: vitamin.as_json
    end
  end

  def create
    vitamin = Vitamin.new(
      name: params[:name],
    )
    vitamin.save
    render json: vitamin.as_json
  end

  def update
    vitamin = Vitamin.find_by(id: params[:id])
    vitamin.name = params[:name]
    vitamin.save
    render json: vitamin.as_json
  end

  def destroy
    vitamin = Vitamin.find_by(id: params[:id])
    vitamin.destroy
    render json: { message: "The selected vitamins has been removed" }
  end
end

class VitaminsController < ApplicationController
  before_action :authenticate_admin, only: [:create, :update, :destroy]

  def index
    vitamins = Vitamin.all
    render json: vitamins.as_json
  end

  def show
    vitamin = Vitamin.find_by(id: params[:id])
    render json: vitamin.as_json
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

class VitaminsController < ApplicationController
  # before_action :authenticate_admin, only: [:create, :update, :destroy]

  def index
    @vitamins = Vitamin.all
    render template: "vitamins/index"
  end

  def show
    @vitamin = Vitamin.find_by(id: params[:id])
    render template: "vitamins/show"
  end

  def create
    @vitamin = Vitamin.new(
      name: params[:name],
      description: params[:description],
      name: params[:name],
      sources: params[:sources],
      used_for: params[:used_for],
    )
    @vitamin.save
    render template: "vitamins/show"
  end

  def update
    vitamin = Vitamin.find_by(id: params[:id])
    vitamin.name = params[:name]
    vitamin.description = params[:description]
    vitamin.sources = params[:sources]
    vitamin.used_for = params[:used_for]
    vitamin.save
    render json: vitamin.as_json
  end

  def destroy
    @vitamin = Vitamin.find_by(id: params[:id])
    @vitamin.destroy
    render json: { message: "you have removed the selected product" }
  end
end

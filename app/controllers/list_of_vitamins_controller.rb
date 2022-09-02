class ListOfVitaminsController < ApplicationController
  def index
    list_of_vitamins = ListOfVitamin.all
    render json: list_of_vitamins.as_json
  end

  def create
    list_of_vitamin = ListOfVitamin.new(
      user_id: params[:user_id],
      vitamin_id: params[:vitamin_id],
      quantity: params[:quantity],
      intake_quantity: 0,
      intake_quantity_left: params[:quantity],
    )
    if list_of_vitamin.save
      render json: list_of_vitamin.as_json
    else
      render json: list_of_vitamin.errors.full_messages, status: 422
    end
  end

  def update
    list_of_vitamin = ListOfVitamin.find_by(id: params[:id])
    list_of_vitamin.user_id = params[:user_id] || list_of_vitamin.user_id
    list_of_vitamin.vitamin_id = params[:vitamin_id] || list_of_vitamin.vitamin_id
    list_of_vitamin.quantity = params[:quantity] || list_of_vitamin.quantity
    list_of_vitamin.intake_quantity = params[:intake_quantity]
    list_of_vitamin.intake_quantity_left = params[:intake_quantity_left] || list_of_vitamin.intake_quantity_left
    list_of_vitamin.save
    render json: list_of_vitamin.as_json
  end

  def destroy
    list_of_vitamin = ListOfVitamin.find_by(id: params[:id])
    list_of_vitamin.destroy
    render json: { message: "you have removed the selected product" }
  end
end

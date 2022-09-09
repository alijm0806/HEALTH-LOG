class ListsOfVitaminsController < ApplicationController
  def index
    @lists_of_vitamins = ListOfVitamin.all
    render template: "lists_of_vitamins/index"
  end

  def create
    @lists_of_vitamin = ListsOfVitamin.new(
      user_id: params[:user_id],
      vitamin_id: params[:vitamin_id],
      quantity: params[:quantity],
      intake_quantity: 0,
      intake_quantity_left: params[:quantity],
    )
    if lists_of_vitamin.save
      render template: "list_of_vitamins/show"
    else
      render json: lists_of_vitamin.errors.full_messages, status: 422
    end
  end

  def update
    lists_of_vitamin = ListsOfVitamin.find_by(id: params[:id])
    lists_of_vitamin.user_id = params[:user_id] || lists_of_vitamin.user_id
    lists_of_vitamin.vitamin_id = params[:vitamin_id] || lists_of_vitamin.vitamin_id
    lists_of_vitamin.quantity = params[:quantity] || lists_of_vitamin.quantity
    lists_of_vitamin.intake_quantity = params[:intake_quantity]
    lists_of_vitamin.intake_quantity_left = params[:intake_quantity_left] || lists_of_vitamin.intake_quantity_left
    lists_of_vitamin.save
    render template: "list_of_vitamins/show"
  end

  def destroy
    lists_of_vitamin = ListsOfVitamin.find_by(id: params[:id])
    lists_of_vitamin.destroy
    render json: { message: "you have removed the selected product" }
  end
end
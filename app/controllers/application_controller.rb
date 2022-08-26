class ApplicationController < ActionController::API
  def index
    vitamins = Vitamin.all
    render json: vitamins.as_json
  end
end

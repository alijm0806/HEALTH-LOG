class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.where(user_id: current_user.id)
    if current_user
      render template: "appointments/index"
    else
      render json: {}, status: :unauthorized
    end
  end

  def show
    @appointment = Appointment.find_by(id: params[:id])
    if current_user
      render template: "appointments/show"
    else
      render json: {}, status: :unauthorized
    end
  end

  def create
    results = Geocoder.search(params[:address])
    coordinates = results.first.coordinates
    p "coordinates"
    p coordinates
    latitude = coordinates[0]
    longitude = coordinates[1]

    @appointment = Appointment.new(
      user_id: current_user.id,
      doctor_id: params[:doctor_id],
      date: params[:date],
      address: params[:address],
      phone_number: params[:phone_number],
      lat: latitude,
      lon: longitude,
    )
    if @appointment.save
      render template: "appointments/show"
    else
      render json: @appointment.errors.full_messages, status: 422
    end
  end

  def update
    appointment = Appointment.find_by(id: params[:id])
    appointment.user_id = params[:user_id] || appointment.user_id
    appointment.doctor_id = params[:doctor_id] || appointment.doctor_id
    appointment.address = params[:address] || appointment.address
    appointment.date = params[:date] || appointment.date
    appointment.phone_number = params[:phone_number] || appointment.phone_number
    appointment.save
    if appointment.save
      render json: appointment.as_json
    else
      render json: appointment.errors.full_messages, status: 422
    end
  end

  def destroy
    appointment = Appointment.find_by(id: params[:id])
    appointment.destroy
    render json: { message: "you have removed the selected list" }
  end
end

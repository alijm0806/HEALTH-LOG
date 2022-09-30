class DoctorsController < ApplicationController
  def index
    doctors = Doctor.all
    if current_user
      render json: doctors.as_json
    else
      render json: {}, status: :unauthorized
    end
  end

  def show
    doctor = Doctor.find_by(id: params[:id])
    if current_user
      render json: doctor.as_json
    else
      render json: {}, status: :unauthorized
    end
  end

  def create
    doctor = Doctor.new(
      name: params[:name],
      address: params[:address],
      speciality: params[:speciality],
      image_url: params[:image_url],

    )
    if doctor.save
      render json: doctor.as_json
    else
      render json: @doctor.errors.full_messages, status: 422
    end
  end

  def update
    doctor = Doctor.find_by(id: params[:id])
    doctor.name = params[:name] || doctor.name
    doctor.address = params[:address] || doctor.address
    doctor.speciality = params[:speciality] || doctor.speciality
    doctor.image_url = params[:image_url] || doctor.image_url
    doctor.save
    if doctor.save
      render json: doctor.as_json
    else
      render json: doctor.errors.full_messages, status: 422
    end
  end

  def destroy
    doctor = Doctor.find_by(id: params[:id])
    doctor.destroy
    render json: { message: "you have removed the selected list" }
  end
end

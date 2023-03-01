class ApartmentsController < ApplicationController

  rescue_from ActiveRecord::RecordNotFound , with: :record_not_found



  def create
    new_apartment = Apartment.create(apartment_params)
    render json: new_apartment, status: :created
  end

  def show
    apartment = Apartment.find(params[:id])
    render json: apartment
  end

  def update
    apartment = Apartment.find(params[:id])
    apartment.update(apartment_params)
    render json: apartment
  end

  def destroy
    apartment = Apartment.find(params[:id])
    apartment.delete
  end

  private 
  def apartment_params
    params.permit(:number)
  end

  def record_not_found
    render json: { error: "Apartment not found" }, status: :not_found

end
end

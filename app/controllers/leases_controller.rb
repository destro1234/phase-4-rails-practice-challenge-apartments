class LeasesController < ApplicationController
  def create
    new_lease = Lease.create(lease_params)
    render json: new_lease, status: :created
  end

  def destroy
    lease = Lease.find(params[:id])
    lease.delete

  end

  private

  def lease_params
    params.permit(:rent, :apartment_id, :tenant_id)
  end
end

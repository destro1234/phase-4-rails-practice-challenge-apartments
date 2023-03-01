class TenantsController < ApplicationController

rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    

    def create
        new_tenant = Tenant.create(tenant_params)
        render json: new_tenant, status: :created
    end

    def show
        tenant = Tenant.find(params[:id])
        render json: tenant
      end
    
      def update
        tenant = Tenant.find(params[:id])
        tenant.update(tenant_params)
        render json: tenant
      end
    
      def destroy
        tenant = Tenant.find(params[:id])
        tenant.delete
      end
      
      private

    def tenant_params
        params.permit(:name, :age)
    end

    def record_not_found
        render json: { error: "Tenant not found" }, status: :not_found
    
    end
end

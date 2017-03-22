class SuppliersController < InheritedResources::Base

  private

    def supplier_params
      params.require(:supplier).permit()
    end
end


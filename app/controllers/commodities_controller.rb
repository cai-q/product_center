class CommoditiesController < InheritedResources::Base

  private

    def commodity_params
      params.require(:commodity).permit()
    end
end


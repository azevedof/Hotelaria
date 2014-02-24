class AposentosController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:aposento, {}).permit(:hotel_id, :valor, :descricao, :numero )]
    end
end

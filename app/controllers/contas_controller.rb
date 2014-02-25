class ContasController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:conta, {}).permit(:consumo_id, :valorTotal, :pago )]
    end
end

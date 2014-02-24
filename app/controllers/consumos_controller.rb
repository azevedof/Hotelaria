class ConsumosController < InheritedResources::Base
    def build_resource_params
        [params.fetch(:consumo, {}).permit(:descricao, :quantidade, :valorUnitario)]
    end
end

class HospedagensController < InheritedResources::Base
   def build_resource_params
        [params.fetch(:hospedagem, {}).permit(:conta_id, :hospede_id, :aposento_id, :dataEntrada, :dataSaida )]
    end

end

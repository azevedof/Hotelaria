class HospedesController < InheritedResources::Base
    def build_resource_params
        [params.fetch(:hospede, {}).permit(:nome, :cpf, :rg, :telefone)]
    end

end

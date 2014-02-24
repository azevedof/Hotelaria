class HotelsController < InheritedResources::Base
    def build_resource_params
        [params.fetch(:hotel, {}).permit(:nome, :endereco, :telefone, :cidade, :estado)]
    end
end

class AtendimentoReportsController < InheritedResources::Base
	def index
		@atendimento_reports=Atendimento.find(:all)
		@funcionarios=Funcionario.joins(:pessoa).find(:all).map{|f| [f.pessoa.nome, f.id]}
		@status=Status.find(:all)
	end
	def periodo
		
		if params[:funcionario]!=""
			@periodo=Atendimento.where(:data_at=>params[:inicio]..params[:fim],:funcionario_id=>params[:funcionario]).order(:data_at)
		else
			@periodo=Atendimento.where(:data_at=>params[:inicio]..params[:fim]).order(:data_at)
		end

	end
end

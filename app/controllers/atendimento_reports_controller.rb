class AtendimentoReportsController < InheritedResources::Base
	def index
		@atendimento_reports=Atendimento.find(:all)
	end
	def periodo
		@periodo=Atendimento.where(:data_at=>params[:inicio]..params[:fim]).order(:data_at)
	end
end

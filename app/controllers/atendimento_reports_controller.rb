class AtendimentoReportsController < InheritedResources::Base
	def index
		@atendimento_reports=Atendimento.find(:all)

		
	end
end

class AtendimentoReportsController < InheritedResources::Base
	def index
		@atendimento_reports=Atendimento.find(:all)
		#@funcionarios=Funcionario.find(:all,:conditions=>{:ativo=>"1",:cargo_id=>1})
		
	end
end

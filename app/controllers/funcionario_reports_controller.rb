class FuncionarioReportsController < InheritedResources::Base
	def index
		@funcionario_reports=Funcionario.find(:all,:conditions=>{:ativo=>"1",:cargo_id=>1})
	end
end

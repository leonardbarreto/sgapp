class Pessoa < ActiveRecord::Base
	before_create :maiusculo
	before_update :maiusculo
	after_initialize :default_values
	has_one :paciente
  attr_accessible :bairro, :cpf, :data_nas, :endereco, :identidade, :municipio_id, :nacionalidade, :naturalidade, :nome, :nome_mae, :nome_pai, :peso, :sexo, :telefone, :telefonecel, :cor_id
  belongs_to :municipio, :foreign_key => 'municipio_id'
  belongs_to :estado_civil, :foreign_key=>'estado_civil_id'
  belongs_to :cor, :foreign_key=>'cor_id'
  validates_presence_of :cor_id, :estado_civil_id, :municipio_id
  SEXO=%w[M F]
	COR=%w[NEGRO BRANCA PARDA]
	SIMNAO=%W[S N]
  	def maiusculo()
  		self.nome.upcase!
		self.nome_pai.upcase!
		self.nome_mae.upcase!
		self.endereco.upcase!
		self.bairro.upcase!
	end
	def default_values()
		self.naturalidade ||= "RIO DE JANEIRO"
      	self.nacionalidade ||= "BRASILEIRA"
      	self.estado_civil_id ||= "0" #não informado
      	self.cor_id ||= "0" #não informado
      	self.estado_civil_id||= "0"#não informado
    end
    def calc_idade(data)
    	DateTime.now.year - data.year
    	
    	#.strftime("%d/%m/%Y")
    end
end

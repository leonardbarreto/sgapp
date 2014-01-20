class Pessoa < ActiveRecord::Base
	before_create :maiusculo
	before_update :maiusculo
	after_initialize :default_values
	has_one :paciente
  has_one :funcionario
  attr_accessible :bairro, :cpf, :data_nas, :endereco, :identidade, :municipio_id, :nacionalidade, :naturalidade, :nome, :nome_mae, :nome_pai, :peso, :sexo, :telefone, :telefonecel, :cor_id,:grau_instrucao_id, :estado_civil_id
  belongs_to :municipio, :foreign_key => 'municipio_id'
  belongs_to :estado_civil, :foreign_key=>'estado_civil_id'
  belongs_to :cor, :foreign_key=>'cor_id'
  validates_presence_of :cor_id, :estado_civil_id, :municipio_id,:nome
  validates_length_of :identidade, :maximum=>10, :allow_nil=>true
  validates_length_of :telefone, :maximum=>10, :allow_nil=>true
  validates_length_of :telefonecel, :maximum=>15, :allow_nil=>true
  SEXO=%w[M F]
	COR=%w[NEGRO BRANCA PARDA]
	SIMNAO=%W[S N -]
  def maiusculo()
  	#colocar para maiúsculo se existir algo digitado
    if (self.nome)
      self.nome.upcase!
		end
    if (self.nome_pai)
      self.nome_pai.upcase!
		end
    if (self.nome_mae)
      self.nome_mae.upcase!
		end
    if (self.endereco)
      self.endereco.upcase!
    end
		if (self.bairro)
      self.bairro.upcase!
    end
	end
	def default_values()
		self.naturalidade ||= "RIO DE JANEIRO"
    self.nacionalidade ||= "BRASILEIRA"
    self.estado_civil_id ||= "0" #não informado
    self.cor_id ||= "0" #não informado
    self.estado_civil_id||= "0"#não informado
    self.municipio_id||=3579 #Campos
  end
  def calc_idade(data)
    data.nil? ? "-" : (DateTime.now.year - data.year)
  end
end

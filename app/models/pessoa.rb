class Pessoa < ActiveRecord::Base
	#before_create :maiusculo
	#before_update :maiusculo
  before_create :attrs_to_upcase
  before_update :attrs_to_upcase
	after_initialize :default_values
	has_one :paciente
  has_one :funcionario
  attr_accessible :bairro, :cpf, :data_nas, :endereco, :identidade, :municipio_id, :nacionalidade, :naturalidade, :nome, :nome_mae, :nome_pai, :peso, :sexo, :telefone, :telefonecel, :cor_id,:grau_instrucao_id, :estado_civil_id,:gi_completo
  belongs_to :municipio, :foreign_key => 'municipio_id'
  belongs_to :estado_civil, :foreign_key=>'estado_civil_id'
  belongs_to :grau_instrucao, :foreign_key=>'grau_instrucao_id'
  belongs_to :cor, :foreign_key=>'cor_id'
  validates_presence_of :cor_id, :estado_civil_id, :municipio_id,:nome
  validates_length_of :identidade, :maximum=>10, :allow_nil=>true
  validates_length_of :telefone, :maximum=>14, :allow_nil=>true
  validates_length_of :telefonecel, :maximum=>15, :allow_nil=>true
  SEXO=%w[M F]
	COR=%w[NEGRO BRANCA PARDA]
	SIMNAO=%W[S N -]

   def attrs_to_upcase
    #grava atributos do tipo string para caixa alta
     self.attributes.each do |attrib, val|
      if val.is_a? String
        self.send(attrib.to_sym).upcase!
      end
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
  def calcIdade()
    self.data_nas.nil? ? "---": (DateTime.now.year - self.data_nas.year)
  end
  def calc_idade(data)
    data.nil? ? "-" : (DateTime.now.year - data.year)
  end
end

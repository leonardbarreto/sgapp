class Funcionario < ActiveRecord::Base
	belongs_to :pessoa, :foreign_key => 'pessoa_id'
	belongs_to :cargo, :foreign_key=>'cargo_id'
	accepts_nested_attributes_for :pessoa
	accepts_nested_attributes_for :cargo
  	attr_accessible :pessoa_attributes,:agenda_profissional_attributes,:user_id,:dt_admissao, :matricula, :pessoa_id,:cargo_id
  	validates_presence_of :matricula,:cargo_id
  	belongs_to :user, :foreign_key=>'user_id'
  	has_many :agenda_profissional, :dependent => :destroy #caso apague funcionário, apagar tb sua agenda
    has_many :atendimento, :dependent => :destroy #caso apague funcionário, apagar tb sua agenda

  	#named_scope :lista_funcionarios, self.all.map { |f| [f.pessoa.nome, f.id] }


	def diaDeTrabalho?(day)
      @agenda=AgendaProfissional.where(:funcionario_id=>self,:ativo=>true)
      data=DateTime.parse(day)
      @agenda.each do |ag|
        if (ag.dia==data.wday) #é o dia de trabalho do funcionario
          return true
        end
      end
      self.errors.add(:id,"Nao eh o dia de trabalho")
      #self.errors.add(:errors,"asdfasf #{data}.raise diaInvalido")
      return false
  end

  #Verifica se não a agenda de um dado funcionário 
  # em um dia está cheia
  def agendaLotada?(day)
    data=DateTime.parse(day)
    @agenda=AgendaProfissional.where(:funcionario_id=>self,:dia=>data.wday,:ativo=>true).last
    @at=Atendimento.where(:funcionario_id=>self,:data_at=>data).order(:data_at,:horario)
    if !(@at.empty?) #&& !(@agenda.nil?)
      if (@at.last.horario_fim>=@agenda.hora_fim)
        return true
      end
    else
      return false
    end
  end

  def atendimentosMes(mes=nil)
    mes||=Date.today.month
    self.atendimento.where('extract(month from(data_at))=? and funcionario_id=? and status_id=?',mes,self,4).count
  end
end

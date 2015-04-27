class AgendaProfissional < ActiveRecord::Base

 belongs_to :funcionario, :foreign_key =>'funcionario_id'
accepts_nested_attributes_for :funcionario
  attr_accessible :dia, :funcionario_id, :hora_fim, :hora_ini, :ativo, :funcionario_attributes

 

  def self.search(search)  
    if search  
      #search.upcase!
      where('funcionario_id= ?', "#{search}")  
      #where('funcionario_id= 12')  
    else  
      scoped  
    end  
  end

  

end

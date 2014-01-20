class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  has_one :funcionario
  ROLES=%w[admin administrativo eqtecnica]
  after_initialize :default_values
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:role
  # attr_accessible :title, :body
  def admin?
    	#role.permissao == 'admin'
    role == 'admin'
  end
  def administrativo?
    role=='administrativo'
  end
  def eqtecnica?
    role=='eqtecnica'
  end
  def papel
    if self.admin?
      :administrador
    elsif self.administrativo?
      :administrativo
    elsif self.eqtecnica?
      :eqtecnica
    end
  end
  def default_values()
    self.role ||= "convidado"
  end
end

class Exame < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :atendimento, :foreign_key=>'atendimento_id'
  after_initialize :init
	def init #similar ao método default_values
		self.created_at ||=Time.now
		self.updated_at ||=Time.now
	end
end

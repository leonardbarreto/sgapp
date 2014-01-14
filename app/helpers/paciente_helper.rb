module PacienteHelper
	def data_nasc(date)
    # formatando data de nascimento: dd/mm/yyyy
    date.strftime("%d/%m/%Y")
  end
end
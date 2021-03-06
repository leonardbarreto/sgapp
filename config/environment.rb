# encoding: UTF-8
# Load the rails application
require File.expand_path('../application', __FILE__)
silence_warnings do
	Date::ABBR_DAYNAMES = %w(Dom Seg Ter Qua Qui Sex Sab)
	Date::DAYNAMES = %w(Domingo Segunda-Feira Terça-Feira Quarta-Feira Quinta-Feira Sexta-Feira Sábado)
	Date::MONTHNAMES = %w(Janeiro Fevereiro Marco Abril Maio Junho Julho Agosto Setembro Outubro Novembro Dezembro)
end
# Initialize the rails application
Sga::Application.initialize!

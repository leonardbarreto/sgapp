# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
 #set :output, "/Des/sga/sga/log/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

#Após cada modificação de regra no arquivo, atualizar o cron:
# => $ whenever --update-crontab store

# Para checar se tarefa foi gravada
#=> $ crontab -l
every 1.day, :at=>'09:00 am' do
	runner "Atendimento.atualizarNaoAtendidos", :environment=>'development'#, :output=>{:error=>'error.log',:standard=>'cron.log'}
end

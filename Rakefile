
task :default => :test #Rake por defecto


desc:"Realiza los test"
task :test do
 sh "ruby-Ilib test/tc_rps.rb"
end

desc:"ejecutar un test especifico"

task :t,:test_name do |t,args|
		test_name = args[:tets_name]||'test_play'
	sh "ruby-w -Ilib test/tc_rps.rb --name #{test_name}"
end

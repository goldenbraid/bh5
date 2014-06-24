require 'rake'
require 'rake/testtask'

desc "Run all tests"
task :test do
  
  unless ENV.has_key? 'BH5_USERNAME'
  	print 'Username: '
  	ENV['BH5_USERNAME'] = STDIN.gets.chomp
  end

  unless ENV.has_key? 'BH5_PASSWORD'
  	print 'Password: '
  	ENV['BH5_PASSWORD'] = STDIN.gets.chomp
  end

  Rake::TestTask.new do |t|
    t.libs << "test"
    t.pattern = "test/**/*_test.rb"
    t.verbose = false
  end
end

task :default => :test

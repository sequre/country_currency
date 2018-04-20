require 'rake'
require './lib/country_currency.rb'
require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'lib' << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end

task :default => :test

desc 'Run a console'
task :console do
  require './lib/country_currency'
  require 'irb'
  ARGV.clear
  IRB.start
end

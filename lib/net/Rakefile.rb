# Rakefile.rb
# 4 de octubre de 2007
#

require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

task :test do
  test_task = Rake::TestTask.new("test_all") do |t|
    #t.libs << "../test/"
    t.test_files = "../test/*"
    t.verbose = true
  end
  
  task("test_all").execute
end
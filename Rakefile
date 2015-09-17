# require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new do |t|
  t.test_files = FileList['./test/rps_game/**/*.rb']
end
desc "Run tests"


task default: :test

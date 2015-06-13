require "bundler/gem_tasks"

task :chuck_pry do
  system 'rake build'
  system 'rake install:local'
  system 'pry -r chuck_norris'
end

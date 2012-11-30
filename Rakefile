#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

Bundler::GemHelper.install_tasks

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

task :test => :spec
task :default => :spec
namespace :spec do
  task :coverage do
    ENV['INVOKE_SIMPLECOV'] = 'true'
    Rake::Task[:spec].invoke
  end
end

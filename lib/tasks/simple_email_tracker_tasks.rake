namespace :simple_email_tracker do
  desc "install to rails"
  task :install do
    system 'rails g simple_email_tracker:intall'
  end
end

require 'rails/generators'
require File.expand_path('../utils', __FILE__)

module SimpleEmailTracker
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)
    include Rails::Generators::Migration
    include Generators::Utils::InstanceMethods
    extend Generators::Utils::ClassMethods

    desc "simple email tracker installation generator"

    def install
      routes = File.open(Rails.root.join("config/routes.rb")).try :read

      route("mount SimpleEmailTracker::Engine => '/email_trackers'")

      display "Adding a migration..."
      migration_template 'migration.rb', 'db/migrate/create_simple_email_tracker_tables.rb' rescue display $!.message
      display "Job's done: migrate!", :blue
    end
  end
end

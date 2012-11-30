module SimpleEmailTracker
  class Engine < Rails::Engine
    isolate_namespace SimpleEmailTracker

    initializer 'helper' do |app|
      # if defined?(ActionView::Base)
      #   ActionView::Base.send :include, SimpleEmailTracker::ViewHelper
      # end

      ActiveSupport.on_load(:action_view) do
        include SimpleEmailTracker::ViewHelper
      end
    end

    rake_tasks do
      Dir[File.join(File.dirname(__FILE__),'../tasks/*.rake')].each { |f| load f }
    end
  end
end

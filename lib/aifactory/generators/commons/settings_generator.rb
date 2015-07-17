module Commons
  module Generators
    class SettingsGenerator < Rails::Generators::Base

      desc 'Generate initializer with settings'
      source_root File.expand_path("../templates", __FILE__)

      def copy_initializer_file
        copy_file "_read_settings.rb", "config/initializers/_read_settings.rb"
      end
    end
  end
end

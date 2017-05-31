module SimpleFormBootstrapDatepicker
  module Generators
    class InstallGenerator < Rails::Generators::Base

      desc "Copies an initializer file /config/initializers/simple_form_bootstrap_datepicker.rb for the input wrapper and copies a Simple Form custom input /app/inputs/date_picker_input.rb"

      source_root File.expand_path("../templates", __FILE__)

      def copy_config
        directory "config"
      end

      def copy_input
        directory "app"
      end
    end
  end
end

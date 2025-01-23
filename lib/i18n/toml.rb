# frozen_string_literal: true

require 'toml-rb'
require_relative 'toml/version'

module I18n
  module Backend
    class Simple
      def load_toml(filename)
        TomlRB.load_file filename
      end
    end
  end
end

class I18n::Toml::Railtie < ::Rails::Railtie
  initializer('i18n/toml') do |app|
    Dir.glob(Rails.root.join('config', 'locales', '**/*.toml')).each { |f| I18n.load_path << f }
  end
end

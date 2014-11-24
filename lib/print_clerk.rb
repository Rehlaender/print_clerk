module PrintClerk
  class Engine < Rails::Engine
    engine_name 'print_clerk'

    config.autoload_paths += %W(#{config.root}/lib)

    initializer "print_invoice.assets.precompile", :after => "clerk.assets.precompile" do |app|
      app.config.assets.precompile += [ "print-invoice.css", "print-receipt.css" , "print_office.js" , "print_office.css"]
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), '../app/**/*_decorator.rb')) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end

require "prawn"
require "barby"
require "chunky_png"

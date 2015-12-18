module PrintClerk
  class Engine < Rails::Engine
    engine_name 'print_clerk'

    # indicate that we have stylesheet/js stuff to be added to office, with the given name
    # files (css + js) must exist in asset path
    def office_assets
      "print_office"
    end

    config.autoload_paths += %W(#{config.root}/lib)

    initializer "print_invoice.assets.precompile", :after => "clerk.assets.precompile" do |app|
      app.config.assets.precompile += [  "print_office.js" , "print_office.css"]
      app.config.assets.precompile += [  "invoice_logo.jpg" , "receipt-logo.gif"]
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

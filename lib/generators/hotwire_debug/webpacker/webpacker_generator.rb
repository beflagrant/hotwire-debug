module HotwireDebug
  class WebpackerGenerator < Rails::Generators::Base
    source_root File.expand_path('templates', __dir__)
    def copy_assets
      template "hotwire-debug.js", "app/javascript/vendor/hotwire-debug.js"
      template "hotwire-debug.scss", "app/javascript/vendor/hotwire-debug.scss"
    end
    def append_imports
      inject_into_file 'app/javascript/packs/application.js', "\nimport '../vendor/hotwire-debug';\n"
      inject_into_file 'app/javascript/stylesheets/application.scss', "\n@import '../vendor/hotwire-debug';\n"
    end
  end
end
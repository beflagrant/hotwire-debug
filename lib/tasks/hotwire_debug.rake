def run_install_template(path) system "#{RbConfig.ruby} ./bin/rails app:template LOCATION=#{File.expand_path("../install/#{path}.rb",  __dir__)}" end

namespace :hotwire_debug do
  desc "Install Hotwire-debug into the app"
  task :install do
    if defined?(Webpacker::Engine)
      Rake::Task["hotwire_debug:install:webpacker"].invoke
    else
      Rake::Task["hotwire_debug:install:asset_pipeline"].invoke
    end
  end

  namespace :install do
    desc "Install Hotwire-debug into the app with asset pipeline"
    task :asset_pipeline do
      run_install_template "hotwire_debug_with_asset_pipeline"
    end

    desc "Install Hotwire-debug into the app with webpacker"
    task :webpacker do
      run_install_template "hotwire_debug_with_webpacker"
    end
  end
end
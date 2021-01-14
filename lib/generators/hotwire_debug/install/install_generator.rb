module HotwireDebug
  class InstallGenerator < Rails::Generators::Base

    def append_javascript_imports
      js = 'app/assets/javascripts/application.js'
      File.new(js,File::CREAT) unless File.exists?(js)
      inject_into_file js, "\n//= require hotwire-debug\n"
    end

    def append_stylesheet_imports

      css = 'app/assets/stylesheets/application.css'
      scss = 'app/assets/stylesheets/application.scss'
      if File.exists?(css)
        target = css
      elsif File.exists?(scss)
        target = scss
      else
        # if neither exist, create a css file
        File.new(css,File::CREAT) unless File.exists?(css)
        target = css
      end

      inject_into_file target, <<~STYLE
      /*
      *= require hotwire-debug
      */
      STYLE
    end
  end
end
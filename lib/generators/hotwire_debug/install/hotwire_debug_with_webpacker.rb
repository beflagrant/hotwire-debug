abort "❌ Webpacker not found. Exiting." unless defined?(Webpacker::Engine)

say "Install Hotwire-debug"
# Copy files to app/javascript/vendor
# 
say "Hotwire-debug successfully installed ⚡️", :green
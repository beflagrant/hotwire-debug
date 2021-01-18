APPLICATION_LAYOUT_PATH = Rails.root.join("app/views/layouts/application.html.erb")
IMPORTMAP_PATH = Rails.root.join("app/assets/javascripts/importmap.json.erb")

if APPLICATION_LAYOUT_PATH.exist?
  say "Yield head in application layout for cache helper"
  insert_into_file APPLICATION_LAYOUT_PATH.to_s, "\n    <%= yield :head %>", before: /\s*<\/head>/

  if APPLICATION_LAYOUT_PATH.read =~ /stimulus/
    say "Add Hotwire-debug include tags in application layout"
    insert_into_file APPLICATION_LAYOUT_PATH.to_s, %(\n    <%= javascript_include_tag "hotwire-debug" %>), after: /<%= stimulus_include_tags %>/

    if IMPORTMAP_PATH.exist?
      say "Add Hotwire-debug to importmap"
      insert_into_file IMPORTMAP_PATH, %(    "hotwire-debug": "<%= asset_path "hotwire-debug" %>",\n), after: /  "imports": {\s*\n/
    end
  else
    say "Add Hotwire-debug include tags in application layout"
    insert_into_file APPLICATION_LAYOUT_PATH.to_s, %(\n    <%= javascript_include_tag "hotwire-debug" %>), before: /\s*<\/head>/
  end
else
  say "Default application.html.erb is missing!", :red

  if APPLICATION_LAYOUT_PATH.read =~ /stimulus/
    say %(        Add <%= javascript_include_tag("hotwire-debug") %> and <%= yield :head %> within the <head> tag after Stimulus includes in your custom layout.)
  else
    say %(        Add <%= javascript_include_tag("hotwire-debug") %> and <%= yield :head %> within the <head> tag in your custom layout.)
  end
end


say "Hotwire-debug successfully installed ⚡️", :green
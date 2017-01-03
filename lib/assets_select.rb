require "assets_select/version"

module AssetsSelect

  #
  # Select files to be added to Asset precompilation.
  #
  ASSETS_SELECTOR_PROC= Proc.new do |path|
    match= path =~ /\.(css|js)\z/
    if match
      path_to_assets= File.join(Rails.root, 'app', 'assets')
      precompile= false
      if path.end_with?('.js')
        js_path= File.join(path_to_assets, 'javascripts')
        Dir[File.join(js_path, '**', '*')].each {|full_path|
          next if File.directory?(full_path)
          if full_path.end_with?(path)
            precompile= full_path
            break
          end
        }
      else
        css_path= File.join(path_to_assets, 'stylesheets')
        Dir[File.join(css_path, '**', '*')].each {|full_path|
          next if File.directory?(full_path)
          if full_path.end_with?(path)
            precompile= full_path
            break
          end
        }
      end
      if precompile
        puts "including asset -> #{precompile}"
      else
        puts "excluding asset -> #{path}"
      end
      precompile
    else false end
  end
end

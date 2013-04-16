require 'sprockets'
require 'handlebars_assets'

project_root = File.expand_path(File.dirname(__FILE__))

assets = Sprockets::Environment.new(project_root) do |env|
  env.logger = Logger.new(STDOUT)
  env.cache = Sprockets::Cache::FileStore.new("/tmp")
end

assets.append_path(File.join(project_root, 'app', 'assets', 'javascripts'))
assets.append_path(File.join(project_root, 'app', 'assets', 'stylesheets'))
assets.append_path(File.join(project_root, 'app', 'assets', 'templates'))

assets.append_path(File.join(project_root, 'vendor', 'assets', 'javascripts'))
assets.append_path(File.join(project_root, 'vendor', 'assets', 'stylesheets'))

HandlebarsAssets::Config.ember = true
HandlebarsAssets::Config.compiler_path = File.join(project_root, 'app', 'assets', 'javascripts')

map "/assets" do
  run assets
end

map "/" do
  run lambda { |env|
    file = File.open('public/index.html', File::RDONLY)
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400',
        'content-length' => file.size.to_s
      },
      file
    ]
  }
end

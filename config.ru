require 'rubygems'
require 'bundler'

Bundler.require
STDOUT.sync = true
Mongoid.load!('config/mongoid.yml')

$LOAD_PATH << File.expand_path('.', __dir__)

require 'blog/api'
require 'health_check/api'

run Rack::URLMap.new(
  "/"       => BlogApi.new, 
  "/health" => HealthCheckApi.new
)
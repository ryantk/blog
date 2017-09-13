require 'rubygems'
require 'bundler'

Bundler.require
STDOUT.sync = true
Mongoid.load!('config/mongoid.yml')

$LOAD_PATH << File.expand_path('.', __dir__)

require 'blog/api'

run BlogApi
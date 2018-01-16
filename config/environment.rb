require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

require_all 'app'
require_relative '../app/movies_controller.rb'
require_relative '../app/models/.keep'
require_relative '../app/models/movie.rb'

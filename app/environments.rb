require 'rubygems'
require 'sinatra'
#require 'wei-backend'
require 'nokogiri'
require 'open-uri'
require 'haml'
# require 'timers'
require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'
require 'httparty'

require_relative '../lib/wei-backend'

require_relative '../app/models/cartoon'
require_relative '../app/models/joke'
require_relative '../app/models/jzw'
require_relative '../app/models/music'

require_relative '../lib/data-grab/cartoon_grab'
require_relative '../lib/data-grab/joke_grab'
require_relative '../lib/data-grab/jzw_grab'
require_relative '../lib/data_grab'

require_relative '../lib/db-helper/db_add'
require_relative '../lib/db-helper/db_query'
require_relative '../lib/db_helper'


require_relative '../lib/baidu_music'
require_relative '../lib/user_content_analysis'

require_relative '../app/controllers/index_controller'
require_relative '../app/controllers/application_controller'

require_relative './constant'





# require_relative '../lib/timer'


configure :development do
 set :database, 'sqlite:///dev.db'
 set :show_exceptions, true
end

configure :production do
 db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///localhost/mydb')

 ActiveRecord::Base.establish_connection(
   :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
   :host     => db.host,
   :username => db.user,
   :password => db.password,
   :database => db.path[1..-1],
   :encoding => 'utf8'
 )
end
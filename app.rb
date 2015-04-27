require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('./**/*.rb')

get ('/') do
  erb(:index)
end

get ('/cost_to_ship') do
  @final_cost = Parcel.new(params.fetch("length").to_i(), params.fetch("width").to_i(), params.fetch("height").to_i(), params.fetch("weight").to_i()).cost_to_ship(params.fetch("distance").to_i, params.fetch("speed").to_i())
  erb(:cost_to_ship)
end

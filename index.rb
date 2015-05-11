require 'sinatra'
require 'shotgun'
require 'sinatra/activerecord'
require './environments'

class Yolo < ActiveRecord::Base
end


# Obtenir toutes les infos de la db.
get '/' do 
	erb :index
end


# Ajouter une info a la db.
post '/recap' do 
	Yolo.create(params)
	erb :liste

end

get "/liste_inscription" do
		@datas = Yolo.all
		erb :liste_inscription
	end




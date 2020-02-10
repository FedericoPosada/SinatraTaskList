require 'sinatra'
require 'make_todo'

get '/' do
	@tasks=Tarea.all
	erb :completed
end

post '/' do
	Tarea.create(params[:taskname])
	@tasks=Tarea.all
	erb :completed
end

get '/delete/:id' do
	Tarea.destroy(params['id'])
	@tasks=Tarea.all
	erb :completed
end

get '/incomplete' do
	@tasks=Tarea.all
	erb :incomplete
end

post '/incomplete' do
	Tarea.create(params[:taskname])
	@tasks=Tarea.all
	erb :incomplete
end

get '/incomplete/delete/:id' do
	Tarea.destroy(params['id'])
	@tasks=Tarea.all
	erb :incomplete
end

get '/incomplete/complete/:id' do
	Tarea.update(params['id'])
	@tasks=Tarea.all
	erb :incomplete
end
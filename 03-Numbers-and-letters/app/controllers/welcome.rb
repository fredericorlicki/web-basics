get '/' do 
	@game = Game.new
	session[:game]= @game
  erb :index
end


post '/guess' do
	
	@submitted_game = session[:game]
	@submitted_game.check!(params[:guess])

	@game = Game.new
	session[:game]= @game

  erb :index
end


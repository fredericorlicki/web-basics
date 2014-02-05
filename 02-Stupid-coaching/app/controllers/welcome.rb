get '/' do
  @coach_message = params[:coach_message] || "what do you want kid ?"
  # Look in app/views/index.erb
  
  erb :index
end

post '/coach' do
	@coach_question = params[:what]
	if @coach_question.include? "?"
		@coach_answer = "silly question. Go to workout, son"
	else 
		@coach_answer = "you suck! go to workout, son"
	end

  erb :coach
end

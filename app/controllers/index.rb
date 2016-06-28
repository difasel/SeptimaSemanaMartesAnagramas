get '/' do
  erb :index
end

get '/:new_word' do
	@new_word = params[:new_word]
  p @words = Word.list_canonical(@new_word.downcase)
  # @words.map {|word| word.word }
  erb :word
end

post '/new_word' do
  redirect to ("/#{params[:user_word]}")
# De aquí se va al get '/new_word' porque sigue le formato "/#{params[:user_word]}"
end


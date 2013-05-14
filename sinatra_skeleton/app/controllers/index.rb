get '/' do
  erb :index
end

get '/word' do
  passed_word = params[:user_input]
  passed_word_sorted = passed_word.split(//).sort.join.downcase
  @anagrams = Word.where('sorted = ?',passed_word_sorted)
  @anagrams.reject! { |anagram| anagram.word == passed_word }
  @list = @anagrams.map { |i| i.word }
  erb :_list, :layout => false
end

require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/find_replace')

get('/form') do
  erb(:form)
end

get('/results') do
  phrase = params.fetch('phrase')
  old_word = params.fetch('old_word')
  new_word = params.fetch('new_word')
  @result_string = phrase.find_and_replace(old_word, new_word)
  erb(:results)
end

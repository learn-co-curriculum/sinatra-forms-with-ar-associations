class AuthorsController < ApplicationController

  get '/authors' do
    # grab all the authors from the db
    @authors = Author.all
    # render some html template
    erb(:'authors/index.html')
  end

end

class BooksController < ApplicationController
  get '/books' do
    # grab all the books from the db
    @books = Book.all
    # render some html template
    erb(:'books/index.html')
  end


  get '/books/new' do
    erb :'books/new.html'
  end

  post '/books' do
    # binding.pry
    @book = Book.new(params[:book])

    # the user is trying to create a new author
    # if !params[:author_name].empty?
    #   author = Author.find_or_create_by(
    #   first_name: params[:author_name].split(" ").first,
    #   last_name: params[:author_name].split(" ").last
    #   )
    #
    #   @book.author = author
    # end

    @book.save

    redirect '/books'
  end

  get '/books/:id' do
    @book = Book.find_by(id: params[:id])

    erb :'books/show.html'
  end



end

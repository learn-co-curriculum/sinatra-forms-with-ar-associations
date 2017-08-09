## Sinatra

### Deliverables

As a site visitor, I should be able to see a list of authors
1. Does my schema need to change?
no
2. Do i need a new route?
yes
get '/authors' (index)
x

As a site visitor, I should be able to see a list of books. I should be able to click on each book title to see more information about that book.
1. Does the schmea need to change? no
2. Do i need a new route?
show get /books/:id
x

As a site visitor, I should be able to see a form where I create a book. When I create a book I can associate it with an existing author.

1. no
2. yes
# show me the form
new get /books/new
# process/ catch that request
create    post /books

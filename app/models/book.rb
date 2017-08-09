class Book < ActiveRecord::Base
  belongs_to :author


  def author_name=(author_name)
    if !author_name.empty?
      author = Author.find_or_create_by(
        first_name: author_name.split(" ").first,
        last_name: author_name.split(" ").last
      )

      self.author = author
    end
  end
end

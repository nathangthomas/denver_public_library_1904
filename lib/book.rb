class Book

  attr_reader :author_first_name, :author_last_name, :title, :publication_date

  def initialize(book_details)
    @author_first_name = book_details[:author_first_name]
    @author_last_name = book_details[:author_last_name]
    @title = book_details[:title]
    @publication_date = book_details[:publication_date]
  end

  def author
    @author_first_name + " " + @author_last_name
  end

  def publication_year
    year = @publication_date.split(" ")
    return year[2]
  end
end

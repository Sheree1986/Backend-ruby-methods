class Book
    attr_reader :author, :title, :count
    def initialize(author,title,count)
      @author = author
      @title = title
      @count = count
    end
    def to_s
      "author: #{author} title: #{title} count: #{count}"
    end
  end
  
  book_array = []
  book_array.push(Book.new("Beatrice Potter","Peter Rabbit",25))
  book_array.push(Book.new("Henry Fielding","Tom Jones",12))
  book_array.push(Book.new("Bob Woodward","All the President's Men",30))
  
  puts "Sorting alphabetically by author"
  
  new_array = book_array.sort do |a,b|
    author1 = a.author.downcase
    author2 = b.author.downcase
    author1 <=> author2
# if author1 > author2
  #   1
  # elsif author1 < author2
  #   -1
  # else
  #   0
  # end
  end
  puts new_array
  
  puts "\nSorting alphabetically by title"

  new_array = book_array.sort do |a,b|
    title1 = a.title.downcase
    title2 = b.title.downcase
    title1 <=> title2
  end

  puts new_array

  puts "\nSorting in order of total copies"

  new_array = book_array.sort do |a,b|
    title1 = a.count
    title2 = b.count
    title1 <=> title2
  end

  puts new_array
  
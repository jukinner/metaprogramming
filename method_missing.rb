require 'ostruct'

class Author
  attr_accessor :first_name, :last_name, :genre

  def author
    OpenStruct.new(first_name: first_name, last_name: last_name, genre: genre)
  end

  def method_missing(method_name, *arguments, &block)
    # author_.... , we want method missing to find these 
    if method_name.to_s =~ /author_(.*)/
      author.send($1, *arguments, &block)
    else 
      super
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    method_name.to_s.start_with?('author') || super
  end
end

author = Author.new
author.first_name = 'Edward'
author.last_name = 'Abbey'
author.genre = 'Adventure'

p author.first_name
p author.genre
p author.respond_to?(:inspect)
p author.respond_to?(:author_genre)
# false at first until respond to missing is implemented. which is bad because it is in fact letting the method run but it is not actually creating the method the default way. hence the false. need method missing.








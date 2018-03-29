poor implmentation
class Author
  def fiction_details(arg)
    puts"Fiction"
    puts arg
    puts "asdfasdfasd"
  end

  def coding_details(arg)
    puts"coding"
    puts arg
    puts "asdfasdfasd"
  end

  def history_details(arg)
    puts"history"
    puts arg
    puts "asdfasdfasd"
  end
end

author = Author.new
author.some_method


class Author
  genres = %w(fiction coding history adventure)

  genres.each do |genre|
    define_method("#{genre}_details") do |arg|
      puts "Genre: #{genre}"
      puts arg
      puts genre.object_id
    end
  end
end

author = Author.new
author.coding_details("cal Newport")
author.adventure_details("Edward Abbey")
p author.respond_to?(:coding_details)

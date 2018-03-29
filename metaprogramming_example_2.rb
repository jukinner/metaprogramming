class String
  def censor(bad_word)
    self.gsub!("#{bad_word}", "CENSORED")
  end

  def num_of_chars
    size
  end
end

p "The quick brown fox jumped over the lazy fox"
# "The quick brown fox jumped over the lazy fox"

p "The quick brown fox jumped over the lazy fox".censor("fox")
# "The quick brown CENSORED jumped over the lazy CENSORED"

p "The quick brown fox jumped over the lazy fox".num_of_chars
# 44

# p "The quick brown fox jumped over the lazy fox".size

# p "The quick brown fox jumped over the lazy fox".length


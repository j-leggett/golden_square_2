class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @finish = 0
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    @contents.split.length
  end

  def reading_time(wpm) 
    words_per_min = count_words.to_f / wpm.to_i
    words_per_min.to_i
  end

  def reading_chunk(wpm, minutes) 
    
    number_of_words = wpm * minutes
    start_from = @finish
    end_at = start_from + number_of_words
  
    chunk = @contents.split[start_from...end_at].join(" ")
    
    if end_at >= count_words
      @finish = 0
    else
      @finish = number_of_words
    end
    
  chunk
    
  end
end


    # `wpm` is an integer representing the number
                                  # of words the user can read per minute
                                  # `minutes` is an integer representing the
                                  # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again reading chunk should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
 
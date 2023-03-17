class GrammarStats
  def initialize
    @passed_tests = 0.0
    @failed_tests = 0.0
  end

  def check(text) # text is a string
   if text.is_a? String
    if text.end_with?(".","!","?") && text.start_with?(/[A-Z]/)
      @passed_tests += 1
      true
    else
      @failed_tests += 1
      false
    end
   else
    @failed_tests += 1
    false
   end
  end

  def percentage_good
    (@passed_tests / (@passed_tests + @failed_tests)) * 100.0
  end
end

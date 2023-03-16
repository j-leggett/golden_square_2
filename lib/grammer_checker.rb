def grammer_checker(text)
  if text.start_with?(/[A-Z]/) && text.end_with?("!",".","?")
    true
  else
    false
  end
end
def task_tracker(task = "no todo")
  task.upcase!
  if task.include?("#TODO")
    "This is a #TODO"
  else
  "This is not a #TODO"
  end
end
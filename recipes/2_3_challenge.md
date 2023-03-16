{{PROBLEM}} Method Design Recipe
Copy this into a recipe.md in your project and fill it out.

1. Describe the Problem
   Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.


2. Design the Method Signature
   Include the name of the method, its parameters, return value, and side effects.

todo_check = task_tracker(task)

task will be in the form of a string(e.g. "#TODO walk dog")
todo_check will be a string saying either "this is a #TODO" or "this is not a #TODO


3. Create Examples as Tests
   Make a list of examples of what the method will take and return.

task_tracker("") => "This is not a #TODO"
task_tracker("#TODO Walk dog") => "This is a #TODO"
task_tracker("Walk dog") => "This is not a #TODO"
task_tracker("#TODO walk dog") => "This is a #TODO"



4. Implement the Behaviour
   After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
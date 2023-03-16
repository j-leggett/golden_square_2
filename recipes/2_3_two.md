{{PROBLEM}} Method Design Recipe
Copy this into a recipe.md in your project and fill it out.

1. Describe the Problem
   Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

2. Design the Method Signature
   Include the name of the method, its parameters, return value, and side effects.

verified_grammer = grammer_checker(text)

text is a string containg a scentence("hello world")
verified grammer returns true or false


3. Create Examples as Tests
   Make a list of examples of what the method will take and return.


grammer_checker("Hello world.") => true
grammer_checker("hello world.") => false
grammer_checker("Hello world") => false
grammer_checker("") => false
grammer_checker("Hello world!") => true
grammer_checker("Hello world?") => true


4. Implement the Behaviour
   After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
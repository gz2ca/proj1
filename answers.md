# Q0: Why is this error being thrown?

Pokemon has not been initialized yet. 

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

Random pokemon appear because they were seeded by the seeds.rb file. The home page is established by home_controller and index.html.erb specifies the set up of the webpage. THe common factor is that they are all trainerless pokemons. 

# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

Goes to the capture method with the variable @pokemon. 

# Question 3: What would you name your own Pokemon?

A name that is not repeated or empty.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

A path with a valid URI or specified terms such as :back. 

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
 
This works because there is an application.html.erb, that is rendering something at the very end. 


# Give us feedback on the project and decal below!

https://github.com/gz2ca/proj1.git

# Extra credit: Link your Heroku deployed app

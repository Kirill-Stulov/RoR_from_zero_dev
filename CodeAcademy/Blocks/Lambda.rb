# Lambda

# Like procs, lambdas are objects. 
# The similarities don’t stop there: with the exception of a bit of syntax and a few behavioral quirks, lambdas are identical to procs.
# Check out the code in the editor. See the lambda bit? Typing

lambda { puts "Hello!" }

# Is just about the same as

Proc.new { puts "Hello!" }

# In the example below, when we pass the lambda to lambda_demo, the method calls the lambda and executes its code.
def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })

# ==> I'm the method!
# ==> I'm the lambda!
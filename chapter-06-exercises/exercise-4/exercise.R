# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(str1, str2){
  char1 <- nchar(str1)
  char2 <- nchar(str2)
  if(char1 - char2 > 0){
    diff <- char1 - char2
    return (diff - char2 >= 0)
  } else {
    diff <- char2 - char1
    return (diff - char1 >= 0)
  }
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
case_1 <- is_twice_as_long("hello", "hello1")
case_2 <- is_twice_as_long("hello", "helloworld")
case_3 <- is_twice_as_long("hello", "")
case_4 <- is_twice_as_long("he", "hello")
case_5 <- is_twice_as_long("hello", "hello")
case_6 <- is_twice_as_long("h", "hello")

# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(str1, str2){
  if(nchar(str1) > nchar(str2)){
    diff <- nchar(str1) - nchar(str2)
    return (paste("Your first string is longer by ", diff, " characters"))
  } else if(nchar(str2) > nchar(str1)){
    diff <- nchar(str2) - nchar(str1)
    return (paste("Your first string is longer by ", diff, " characters"))
  } else {
    return ("Your strings are the same length!")
  }
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
test_1 <- describe_difference("hello", "helloworld")
test_2 <- describe_difference("hello", "he")
test_3 <- describe_difference("hello", "hello")


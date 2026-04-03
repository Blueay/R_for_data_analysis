

########################### 2: Logic #########################

# Boolean TRUE or FALSE
1: !(0 >= -1)
2: 7 != 8
3: 9 < 10
4: !FALSE

1: FALSE || TRUE && FALSE
2: TRUE && FALSE || 9 >= 4 && 3 < 6
3: 99.99 > 100 || 45 < 7.3 || 4 != 4.0
4: TRUE && 62 < 62 && 44 >= 44

1: !(8 > 4) ||  5 == 5.0 && 7.8 >= 7.79
2: FALSE && 6 >= 6 || 7 >= 8 || 50 <= 49.5
3: FALSE || TRUE && 6 != 4 || 9 > 4
4: 6 >= -9 && !(6 > 7) && !(!TRUE)

1: identical(5 > 4, 3 < 3.1)
2: identical('hello', 'Hello')
3: identical(4, 3.1)
4: !identical(7, 7)

1: xor(!isTRUE(TRUE), 6 > -1)
2: xor(4 >= 9, 8 != 8.0)
3: xor(!!TRUE, !!FALSE)
4: xor(identical(xor, 'xor'), 7 == 7.0)1


ints <- sample(10)
ints > 5

which(ints>7)
[1] 1 8 9

#Like the which() function, the functions any() and all() take logical vectors as their argument. The
# any() function will return TRUE if one or more of the elements in the logical vector is TRUE. The
# all() function will return TRUE if every element in the logical vector is TRUE.

any(ints <0)
[1] FALSE

all(ints > 0)
[1] TRUE

1: all(ints == 10)
2: all(c(TRUE, FALSE, TRUE))
3: any(ints == 2.5)
4: any(ints == 10)


################################### 3: Functions  ##################################################

Sys.Date()
[1] "2025-09-23"

mean(c(2,4,5))
[1] 3.666667

#### Boring function####

# You're about to write your first function! Just like you would assign a value 
# to a variable with the assignment operator, you assign functions in the following
# way:
#
# function_name <- function(arg1, arg2){
#	# Manipulate arguments in some way
#	# Return a value
# }
#
# The "variable name" you assign will become the name of your function. arg1 and
# arg2 represent the arguments of your function. You can manipulate the arguments
# you specify within the function. After sourcing the function, you can use the 
# function by typing:
# 
# function_name(value1, value2)
#
# Below we will create a function called boring_function. This function takes
# the argument `x` as input, and returns the value of x without modifying it.
# Delete the pound sign in front of the x to make the function work! Be sure to 
# save this script and type submit() in the console after you make your changes.

boring_function <- function(x) {
  x
}

boring_function('My first function!')
[1] "My first function!"


# If you want to see the source code for any function, just type the function name without any arguments
# or parentheses. Let's try this out with the function you just created. Type: boring_function to view
# its source code.

boring_function
function(x) {
  x
}



##### my_mean function ####

# You're free to implement the function my_mean however you want, as long as it
# returns the average of all of the numbers in `my_vector`.
#
# Hint #1: sum() returns the sum of a vector.
# 	Ex: sum(c(1, 2, 3)) evaluates to 6
#
# Hint #2: length() returns the size of a vector.
# 	Ex: length(c(1, 2, 3)) evaluates to 3
#
# Hint #3: The mean of all the numbers in a vector is equal to the sum of all of
#		   the numbers in the vector divided by the size of the vector.
#
# Note for those of you feeling super clever: Please do not use the mean()
# function while writing this function. We're trying to teach you something 
# here!
#
# Be sure to save this script and type submit() in the console after you make 
# your changes.

my_mean <- function(my_vector) {
  sum(my_vector)/length(my_vector)
  
}

#Now test out your my_mean() function by finding the mean of the vector c(4, 5, 10).

my_mean(c(4,5,10))
[1] 6.333333


##### remainder function #####
# Let me show you an example of a function I'm going to make up called
# increment(). Most of the time I want to use this function to increase the
# value of a number by one. This function will take two arguments: "number" and
# "by" where "number" is the digit I want to increment and "by" is the amount I
# want to increment "number" by. I've written the function below. 
#
# increment <- function(number, by = 1){
#     number + by
# }
#
# If you take a look in between the parentheses you can see that I've set
# "by" equal to 1. This means that the "by" argument will have the default
# value of 1.
#
# I can now use the increment function without providing a value for "by": 
# increment(5) will evaluate to 6. 
#
# However if I want to provide a value for the "by" argument I still can! The
# expression: increment(5, 2) will evaluate to 7. 
# 
# You're going to write a function called "remainder." remainder() will take
# two arguments: "num" and "divisor" where "num" is divided by "divisor" and
# the remainder is returned. Imagine that you usually want to know the remainder
# when you divide by 2, so set the default value of "divisor" to 2. Please be
# sure that "num" is the first argument and "divisor" is the second argument.
#
# Hint #1: You can use the modulus operator %% to find the remainder.
#   Ex: 7 %% 4 evaluates to 3. 
#
# Remember to set appropriate default values! Be sure to save this 
# script and type submit() in the console after you write the function.


remainder <- function(num, divisor = 2) {
  num %% divisor
  # Write your code here!
  # Remember: the last expression evaluated will be returned!
}

remainder(5)
[1] 1

remainder(11,5)
[1] 1

remainder(divisor = 11, num = 5)
[1] 5

remainder(4, div = 2)
[1] 0

# With all of this talk about arguments, you may be wondering if there is a way you can see a function's
# arguments (besides looking at the documentation). Thankfully, you can use the args() function! Type:
# args(remainder) to examine the arguments for the remainder function.

args(remainder)
function (num, divisor = 2) 
  NULL


##### evaluate function #####

# You can pass functions as arguments to other functions just like you can pass
# data to functions. Let's say you define the following functions:
#
# add_two_numbers <- function(num1, num2){
#    num1 + num2
# }
#
# multiply_two_numbers <- function(num1, num2){
#	num1 * num2
# }
#
# some_function <- function(func){
#    func(2, 4)
# }
#
# As you can see we use the argument name "func" like a function inside of 
# "some_function()." By passing functions as arguments 
# some_function(add_two_numbers) will evaluate to 6, while
# some_function(multiply_two_numbers) will evaluate to 8.
# 
# Finish the function definition below so that if a function is passed into the
# "func" argument and some data (like a vector) is passed into the dat argument
# the evaluate() function will return the result of dat being passed as an
# argument to func.
#
# Hints: This exercise is a little tricky so I'll provide a few example of how
# evaluate() should act:
#    1. evaluate(sum, c(2, 4, 6)) should evaluate to 12
#    2. evaluate(median, c(7, 40, 9)) should evaluate to 9
#    3. evaluate(floor, 11.1) should evaluate to 11

evaluate <- function(func, dat){
  # Write your code here!
  # Remember: the last expression evaluated will be returned! 
}

evaluate <- function(func, dat){
  
  func(dat)
  
}
submit()

# Let's take your new evaluate() function for a spin! Use
# the evaluate function to find the standard deviation of
# the vector c(1.4, 3.6, 7.9, 8.8). (The function will take
# 'sd' and the vector as arguments)

evaluate(sd,c(1.4, 3.6, 7.9, 8.8))
[1] 3.514138

evaluate(function(x){x+1}, 6)
[1] 7

# Try using evaluate() along with an anonymous function to
# return the first element of the vector c(8, 4, 0). Your
# anonymous function should only take one argument which
# should be a variable `x`.

evaluate(function(x){x[1]},c(8, 4, 0))
[1] 8

# Now try using evaluate() along with an anonymous function to return the last element
# of the vector c(8, 4, 0). Your anonymous function should only take one argument which
# should be a variable `x`.

evaluate(function(x){x[length(x)]},c(8, 4, 0))
[1] 0


##### paste function #####

paste("Programming", "is", "fun!")
[1] "Programming is fun!"


##### ellipses function #####

# The ellipses can be used to pass on arguments to other functions that are
# used within the function you're writing. Usually a function that has the
# ellipses as an argument has the ellipses as the last argument. The usage of
# such a function would look like:
#
# ellipses_func(arg1, arg2 = TRUE, ...)
#
# In the above example arg1 has no default value, so a value must be provided
# for arg1. arg2 has a default value, and other arguments can come after arg2
# depending on how they're defined in the ellipses_func() documentation.
# Interestingly the usage for the paste function is as follows:
#
# paste (..., sep = " ", collapse = NULL)
#
# Notice that the ellipses is the first argument, and all other arguments after
# the ellipses have default values. This is a strict rule in R programming: all
# arguments after an ellipses must have default values. Take a look at the
# simon_says function below:
#
# simon_says <- function(...){
#   paste("Simon says:", ...)
# }
#
# The simon_says function works just like the paste function, except the
# begining of every string is prepended by the string "Simon says:"
#
# Telegrams used to be peppered with the words START and STOP in order to
# demarcate the beginning and end of sentences. Write a function below called 
# telegram that formats sentences for telegrams.
# For example the expression `telegram("Good", "morning")` should evaluate to:
# "START Good morning STOP"


telegram <- function(...){
  paste("START", ..., "STOP")
}
submit()

#### unpack function ####

# Let's explore how to "unpack" arguments from an ellipses when you use the
# ellipses as an argument in a function. Below I have an example function that
# is supposed to add two explicitly named arguments called alpha and beta.
# 
# add_alpha_and_beta <- function(...){
#   # First we must capture the ellipsis inside of a list
#   # and then assign the list to a variable. Let's name this
#   # variable `args`.
#
#   args <- list(...)
#
#   # We're now going to assume that there are two named arguments within args
#   # with the names `alpha` and `beta.` We can extract named arguments from
#   # the args list by using the name of the argument and double brackets. The
#   # `args` variable is just a regular list after all!
#   
#   alpha <- args[["alpha"]]
#   beta  <- args[["beta"]]
#
#   # Then we return the sum of alpha and beta.
#
#   alpha + beta 
# }
#
# Have you ever played Mad Libs before? The function below will construct a
# sentence from parts of speech that you provide as arguments. We'll write most
# of the function, but you'll need to unpack the appropriate arguments from the
# ellipses.


mad_libs <- function(...){
  # Do your argument unpacking here!
  
  args <- list(...)
  
  place <- args[["place"]]
  adjective  <- args[["adjective"]]
  noun <- args[["noun"]]
  paste(place, adjective, noun)
  
  # Don't modify any code below this comment.
  # Notice the variables you'll need to create in order for the code below to
  # be functional!
  paste("News from", place, "today where", adjective, "students took to the streets in protest of the new", noun, "being installed on campus.")
}

submit()


####### binary operators  %[whatever]%  ########

# The syntax for creating new binary operators in R is unlike anything else in
# R, but it allows you to define a new syntax for your function. I would only
# recommend making your own binary operator if you plan on using it often!
#
# User-defined binary operators have the following syntax:
#      %[whatever]% 
# where [whatever] represents any valid variable name.
# 
# Let's say I wanted to define a binary operator that multiplied two numbers and
# then added one to the product. An implementation of that operator is below:
#
# "%mult_add_one%" <- function(left, right){ # Notice the quotation marks!
#   left * right + 1
# }
#
# I could then use this binary operator like `4 %mult_add_one% 5` which would
# evaluate to 21.
#
# Write your own binary operator below from absolute scratch! Your binary
# operator must be called %p% so that the expression:
#
#       "Good" %p% "job!"
#
# will evaluate to: "Good job!"

"%p%" <- function(){ # Remember to add arguments!
  
}

## Option1
"%p%" <- function(left,right){ # Remember to add arguments!
  
  paste(left,right)
  
}
submit()

'I' %p% 'love' %p% 'R!'
[1] "I love R!"


######################## 4: lapply and sapply - loop functions ################


| Each of the *apply functions will SPLIT up some data into smaller pieces, APPLY a function
| to each piece, then COMBINE the results. A more detailed discussion of this strategy is
| found in Hadley Wickham's Journal of Statistical Software paper titled 'The
| Split-Apply-Combine Strategy for Data Analysis'.

...
|=====                                                                              |   6%
| Throughout this lesson, we'll use the Flags dataset from the UCI Machine Learning
| Repository. This dataset contains details of various nations and their flags. More
| information may be found here: http://archive.ics.uci.edu/ml/datasets/Flags


head(flags)
name landmass zone area population language religion bars stripes colours red
1    Afghanistan        5    1  648         16       10        2    0       3       5   1
2        Albania        3    1   29          3        6        6    0       0       3   1
3        Algeria        4    1 2388         20        8        2    2       0       3   1
4 American-Samoa        6    3    0          0        1        1    0       0       5   1
5        Andorra        3    1    0          0        6        0    3       0       3   1
6         Angola        4    2 1247          7       10        5    0       2       3   1
green blue gold white black orange mainhue circles crosses saltires quarters sunstars
1     1    0    1     1     1      0   green       0       0        0        0        1
2     0    0    1     0     1      0     red       0       0        0        0        1
3     1    0    0     1     0      0   green       0       0        0        0        1
4     0    1    1     1     0      1    blue       0       0        0        0        0
5     0    1    1     0     0      0    gold       0       0        0        0        0
6     0    0    1     0     1      0     red       0       0        0        0        1
crescent triangle icon animate text topleft botright
1        0        0    1       0    0   black    green
2        0        0    0       1    0     red      red
3        1        0    0       0    0   green    white
4        0        1    1       1    0    blue      red
5        0        0    0       0    0    blue      red
6        0        0    1       0    0     red    black

dim(flags)
[1] 194  30

viewinfo()
[1] "/Library/Frameworks/R.framework/Versions/4.5-arm64/Resources/library/swirl/Courses/14_310x_Advanced_R/lapply_and_sapply/flag.names.txt"

class(flags)
[1] "data.frame"

cls_list <- lapply(flags, class)

> cls_list
$name
[1] "character"

$landmass
[1] "integer"

$zone
[1] "integer"

class(cls_list)
[1] "list"

as.character(cls_list)
[1] "character" "integer"   "integer"   "integer"   "integer"   "integer"   "integer"  
[8] "integer"   "integer"   "integer"   "integer"   "integer"   "integer"   "integer"  
[15] "integer"   "integer"   "integer"   "character" "integer"   "integer"   "integer"  
[22] "integer"   "integer"   "integer"   "integer"   "integer"   "integer"   "integer"  
[29] "character" "character"

cls_vect <- sapply(flags, class)

class(cls_vect)
[1] "character"

sum(flags$orange)
[1] 26

Now we want to repeat this operation for each of the colors recorded in the dataset.

...

|=======================================                                            |  47%
| First, use flag_colors <- flags[, 11:17] to extract the columns containing the color data
| and store them in a new data frame called flag_colors. (Note the comma before 11:17. This
                                                          | subsetting command tells R that we want all rows, but only columns 11 through 17.)

> flag_colors <- flags[,11:17]
Use the head() function to look at the first 6 lines of flag_colors.

> head(flag_colors)
red green blue gold white black orange
1   1     1    0    1     1     1      0
2   1     0    0    1     0     1      0
3   1     1    0    0     1     0      0
4   1     0    1    1     1     0      1
5   1     0    1    1     0     0      0
6   1     0    0    1     0     1      0



To get a list containing the sum of each column of flag_colors, call the lapply() function
| with two arguments. The first argument is the object over which we are looping (i.e.
                                                                                  | flag_colors) and the second argument is the name of the function we wish to apply to each
| column (i.e. sum). Remember that the second argument is just the name of the function with
| no parentheses, etc.

lapply(flag_colors,sum)
$red
[1] 153

$green
[1] 91

$blue
[1] 99

$gold
[1] 91

$white
[1] 146

$black
[1] 52

$orange
[1] 26

The result is a list, since lapply() always returns a list. Each element of this list is
| of length one, so the result can be simplified to a vector by calling sapply() instead of
| lapply(). Try it now.

sapply(flag_colors,sum)
red  green   blue   gold  white  black orange 
153     91     99     91    146     52     26 

sapply(flag_colors,mean)
red     green      blue      gold     white     black    orange 
0.7886598 0.4690722 0.5103093 0.4690722 0.7525773 0.2680412 0.1340206 


| The range() function returns the minimum and maximum of its first argument, which should
| be a numeric vector. Use lapply() to apply the range function to each column of
| flag_shapes. Don not worry about storing the result in a new variable. By now, we know that
| lapply() always returns a list.

lapply(flag_shapes, range)
$circles
[1] 0 4

$crosses
[1] 0 2

$saltires
[1] 0 1

$quarters
[1] 0 4

$sunstars
[1]  0 50


shape_mat <- sapply(flag_shapes, range)


  
  |===========================================================                        |  71%
| View the contents of shape_mat.

shape_mat
circles crosses saltires quarters sunstars
[1,]       0       0        0        0        0
[2,]       4       2        1        4       50

When given a vector, the unique() function returns a vector with all duplicate elements
| removed. In other words, unique() returns a vector of only the 'unique' elements. To see
| how it works, try unique(c(3, 4, 5, 5, 5, 6, 6)).

> unique(c(3, 4, 5, 5, 5, 6, 6))
[1] 3 4 5 6

| We want to know the unique values for each variable in the flags dataset. To accomplish
| this, use lapply() to apply the unique() function to each column in the flags dataset,
| storing the result in a variable called unique_vals.

unique_vals <- lapply(flags, unique)

| Apply the length() function to each element of the unique_vals list using sapply().
| Remember, no parentheses after the name of the function you are applying (i.e. length).

> sapply(unique_vals,length)
name   landmass       zone       area population   language   religion       bars 
194          6          4        136         48         10          8          5 
stripes    colours        red      green       blue       gold      white      black 
12          8          2          2          2          2          2          2 
orange    mainhue    circles    crosses   saltires   quarters   sunstars   crescent 
2          8          4          3          2          3         14          2 
triangle       icon    animate       text    topleft   botright 
2          2          2          2          7          8 

| Use sapply() to apply the unique() function to each column of the flags dataset to see
| that you get the same unsimplified list that you got from lapply().

> sapply(flags, unique)

| Pretend you are interested in only the second item from each element of the unique_vals
| list that you just created. Since each element of the unique_vals list is a vector and
| we are not aware of any built-in function in R that returns the second element of a vector,
| we will construct our own function.

...

  |================================================================================   |  96%
| lapply(unique_vals, function(elem) elem[2]) will return a list containing the second item
| from each element of the unique_vals list. Note that our function takes one argument,
| elem, which is just a 'dummy variable' that takes on the value of each element of
| unique_vals, in turn.

lapply(unique_vals, function(elem) elem[2])
$name
[1] "Albania"

$landmass
[1] 3

$zone
[1] 3

$area
[1] 29

$population
[1] 3

$language
[1] 6

$religion
[1] 6

$bars
[1] 2

$stripes
[1] 0

$colours
[1] 3

$red
[1] 0

$green
[1] 0

$blue
[1] 1

$gold
[1] 0

$white
[1] 0

$black
[1] 0

$orange
[1] 1

$mainhue
[1] "red"

$circles
[1] 1

$crosses
[1] 1

$saltires
[1] 1

$quarters
[1] 1

$sunstars
[1] 0

$crescent
[1] 1

$triangle
[1] 1

$icon
[1] 0

$animate
[1] 1

$text
[1] 1

$topleft
[1] "red"

$botright
[1] "red"


######################################## 5: vapply and tapply ########################################## 

| In this lesson, you will learn how to use vapply() and tapply(), each of which serves a very
| specific purpose within the Split-Apply-Combine methodology. For consistency, we will use
| the same dataset we used in the 'lapply and sapply' lesson.

| The Flags dataset from the UCI Machine Learning Repository contains details of various
| nations and their flags. More information may be found here:
| http://archive.ics.uci.edu/ml/datasets/Flags

| Try vapply(flags, unique, numeric(1)), which says that you expect each element of the
| result to be a numeric vector of length 1. Since this is NOT actually the case, YOU WILL
| GET AN ERROR. Once you get the error, type ok() to continue to the next question.

> vapply(flags, unique, numeric(1))
Error in vapply(flags, unique, numeric(1)) : values must be length 1,
but FUN(X[[1]]) result is length 194

> ok()

sapply(flags, class)
name    landmass        zone        area  population    language    religion 
"character"   "integer"   "integer"   "integer"   "integer"   "integer"   "integer" 
bars     stripes     colours         red       green        blue        gold 
"integer"   "integer"   "integer"   "integer"   "integer"   "integer"   "integer" 
white       black      orange     mainhue     circles     crosses    saltires 
"integer"   "integer"   "integer" "character"   "integer"   "integer"   "integer" 
quarters    sunstars    crescent    triangle        icon     animate        text 
"integer"   "integer"   "integer"   "integer"   "integer"   "integer"   "integer" 
topleft    botright 
"character" "character" 

|===================================                                                |  42%
| If we wish to be explicit about the format of the result we expect, we can use
| vapply(flags, class, character(1)). The 'character(1)' argument tells R that we expect the
| class function to return a character vector of length 1 when applied to EACH column of the
| flags dataset. Try it now.

> vapply(flags, class, character(1))
name    landmass        zone        area  population    language    religion 
"character"   "integer"   "integer"   "integer"   "integer"   "integer"   "integer" 
bars     stripes     colours         red       green        blue        gold 
"integer"   "integer"   "integer"   "integer"   "integer"   "integer"   "integer" 
white       black      orange     mainhue     circles     crosses    saltires 
"integer"   "integer"   "integer" "character"   "integer"   "integer"   "integer" 
quarters    sunstars    crescent    triangle        icon     animate        text 
"integer"   "integer"   "integer"   "integer"   "integer"   "integer"   "integer" 
topleft    botright 
"character" "character"

| The 'landmass' variable in our dataset takes on integer values between 1 and 6, each of
| which represents a different part of the world. Use table(flags$landmass) to see how many
| flags/countries fall into each group.

> table(flags$landmass)

1  2  3  4  5  6 
31 17 35 52 39 20 

| The 'animate' variable in our dataset takes the value 1 if a country is flag contains an
| animate image (e.g. an eagle, a tree, a human hand) and 0 otherwise. Use
| table(flags$animate) to see how many flags contain an animate image.

> table(flags$animate)

  0   1 
155  39 

| Nice work!

  |===========================================================                        |  71%
| This tells us that 39 flags contain an animate object (animate = 1) and 155 do not
| (animate = 0).


|==============================================================                     |  75%
| If you take the arithmetic mean of a bunch of 0s and 1s, you get the proportion of 1s. Use
| tapply(flags$animate, flags$landmass, mean) to apply the mean function to the 'animate'
| variable separately for each of the six landmass groups, thus giving us the proportion of
| flags containing an animate image WITHIN each landmass group.

> tapply(flags$animate, flags$landmass, mean)
1         2         3         4         5         6 
0.4193548 0.1764706 0.1142857 0.1346154 0.1538462 0.3000000 

| That is the answer I was looking for.

  |==================================================================                 |  79%
| The first landmass group (landmass = 1) corresponds to North America and contains the
| highest proportion of flags with an animate image (0.4194).

|=====================================================================              |  83%
| Similarly, we can look at a summary of population values (in round millions) for countries
| with and without the color red on their flag with tapply(flags$population, flags$red,summary).

tapply(flags$population, flags$red,summary)
$`0`
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.00    0.00    3.00   27.63    9.00  684.00 

$`1`
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.0     0.0     4.0    22.1    15.0  1008.0 


| Lastly, use the same approach to look at a summary of population values for each of the
| six landmasses.

> tapply(flags$population, flags$landmass,summary)
$`1`
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.00    0.00    0.00   12.29    4.50  231.00 

$`2`
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.00    1.00    6.00   15.71   15.00  119.00 

$`3`
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.00    0.00    8.00   13.86   16.00   61.00 

$`4`
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.000   1.000   5.000   8.788   9.750  56.000 

$`5`
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.00    2.00   10.00   69.18   39.00 1008.00 

$`6`
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.00    0.00    0.00   11.30    1.25  157.00 



###################################### 6: Simulation  #########################################

| The first function we will use to generate random numbers is sample(). Use ?sample to pull
| up the documentation.

?sample

| Perseverance, that is the answer.

|========                                                                           |   9%
| Let us simulate rolling four six-sided dice: sample(1:6, 4, replace = TRUE).

sample(1:6,4, replace = TRUE)
[1] 4 2 1 1

| Keep up the great work!
| Now repeat the command to see how your result differs. (The probability of rolling the
| exact same result is (1/6)^4 = 0.00077, which is pretty small!)

sample(1:6,4, replace = TRUE)
[1] 4 5 3 1

| sample(1:6, 4, replace = TRUE) instructs R to randomly select four numbers between 1 and
| 6, WITH replacement. Sampling with replacement simply means that each number is "replaced"
| after it is selected, so that the same number can show up more than once. This is what we
| want here, since what you roll on one die should not affect what you roll on any of the
| others.

| Now sample 10 numbers between 1 and 20, WITHOUT replacement. To sample without
| replacement, simply leave off the 'replace' argument.

 sample(1:20,10)
[1] 16  6  9 19  5 15 14  3 10 18
 
Since the last command sampled without replacement, no number appears more than once in
the output.

LETTERS
[1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V"
[23] "W" "X" "Y" "Z"

sample(LETTERS)
[1] "U" "A" "Z" "E" 
"F" "N" "C" "D" "T" "P" "X" "R" "J" "G" "K" "S" "H" "O" "Q" "Y" "I" "M"
[23] "V" "L" "B" "W"

| Let the value 0 represent tails and the value 1 represent heads. Use sample() to draw a
| sample of size 100 from the vector c(0,1), with replacement. Since the coin is unfair, we
| must attach specific probabilities to the values 0 (tails) and 1 (heads) with a fourth
| argument, prob = c(0.3, 0.7). Assign the result to a new variable called flips.

> flips <- sample(c(0,1), 100, replace = TRUE, prob = c(0.3, 0.7))

| Your dedication is inspiring!
  
  |==================================                                                 |  41%
| View the contents of the flips variable.

> flips
[1] 1 1 0 1 1 1 1 1 1 0 0 1 1 1 1 1 1 0 1 1 0 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1
[45] 0 0 1 1 0 1 0 0 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 0 1 1 0 1 1 0
[89] 1 1 0 1 1 0 0 0 1 1 1 1

| Excellent job!
  
  |====================================                                               |  44%
| Since we set the probability of landing heads on any given flip to be 0.7, we wud expect
| approximately 70 of our coin flips to have the value 1. Count the actual number of 1s
| contained in flips using the sum() function.

> sum(flips)
[1] 76

| Great job!
  
  | Each probability distribution in R has an r*** function (for "random"), a d*** function
| (for "density"), a p*** (for "probability"), and q*** (for "quantile"). We are most
| interested in the r*** functions in this lesson, but I encourage you to explore the others
| on your own.

...

|============================================                                       |  53%
| A binomial random variable represents the number of 'successes' (heads) in a given number
| of independent 'trials' (coin flips). Therefore, we can generate a single random variable
| that represents the number of heads in 100 flips of our unfair coin using rbinom(1, size =
                                                                                     | 100, prob = 0.7). Note that you only specify the probability of 'success' (heads) and NOT
| the probability of 'failure' (tails). Try it now.

> rbinom(1, size = 100, prob = 0.7)
[1] 68


| Equivalently, if we want to see all of the 0s and 1s, we can request 100 observations,
| each of size 1, with success probability of 0.7. Give it a try, assigning the result to a
| new variable called flips2.

flips2 <- rbinom(n = 100, size = 1, prob = 0.7)

flips2
[1] 1 1 0 0 1 0 1 1 1 0 0 1 1 1 0 0 0 1 1 1 0 0 1 1 1 0 0 0 1 1 1 1 0 1 1 1 1 0 1 1 1 0 0 0
[45] 0 0 0 1 1 1 1 0 1 0 0 0 0 1 0 1 1 1 1 1 1 1 1 1 0 1 0 1 0 1 1 1 1 1 0 0 0 1 1 0 1 0 1 1
[89] 1 1 1 0 1 1 1 1 0 1 0 1


| Similar to rbinom(), we can use R to simulate random numbers from many other probability
| distributions. Pull up the documentation for rnorm() now.

> ?rnorm

| Excellent job!
  
  |=========================================================                          |  69%
| The standard normal distribution has mean 0 and standard deviation 1. As you can see under
| the 'Usage' section in the documentation, the default values for the 'mean' and 'sd'
| arguments to rnorm() are 0 and 1, respectively. Thus, rnorm(10) will generate 10 random
| numbers from a standard normal distribution. Give it a try.

rnorm(10)
[1]  1.0677667 -0.6798332  1.6000752 -0.4943002  0.4693323  0.7358849 -1.1372090  1.3143268
[9] -1.1409426  0.4380777


|============================================================                       |  72%
| Now do the same, except with a mean of 100 and a standard deviation of 25.
rnorm(10, mean = 100, sd = 25)
[1] 108.15619 121.95925 117.90218  85.27459  69.45541 138.35130  93.37344 139.98741
[9] 131.00881 103.00171


| Finally, what if we want to simulate 100 *groups* of random numbers, each containing 5
| values generated from a Poisson distribution with mean 10? Let us start with one group of 5
| numbers, then I will show you how to repeat the operation 100 times in a convenient and
| compact way.

...

|=================================================================                  |  78%
| Generate 5 random values from a Poisson distribution with mean 10. Check out the
| documentation for rpois() if you need help.

rpois(5, lambda = 10)
[1] 10  5 12  9  8

| Now use replicate(100, rpois(5, 10)) to perform this operation 100 times. Store the result
| in a new variable called my_pois.

> my_pois <- replicate(100, rpois(5,10))

> my_pois
[,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11] [,12] [,13] [,14] [,15] [,16]
[1,]   12    8    6   10    8    8   10   15    7    18     9    13    14     9    10     8
[2,]    6    8    5   17   10   12   10   11    8     8    11    13     9     7    10     9
[3,]    9    9   11   18    5    8    8   13   13    10     7     8     9     9     6    13
[4,]   11    9    6   13    7   12   13    6    8    15    10    13    11     6    14     7
[5,]   18   15    5    9    8    9    7   14    5    12    12    10    12     8     8     9
[,17] [,18] [,19] [,20] [,21] [,22] [,23] [,24] [,25] [,26] [,27] [,28] [,29] [,30]
[1,]     4    11    11    15    11    14     9     8    12     6    15     4     6    11
[2,]     9    12     4    18     9    14     9    13     8     9     7     7    13     4
[3,]     7    12     8    10     9    15     9     9     7     9    12    12     9    10
[4,]    11    12     6    12    10    13     9     6    15    12    12    14    11     6
[5,]    11    13     7    13    10    10    13    11     9    13    10    14    10    14
[,31] [,32] [,33] [,34] [,35] [,36] [,37] [,38] [,39] [,40] [,41] [,42] [,43] [,44]
[1,]     9     6    11     9    12     6    11    14     7     8     6     3    13    18
[2,]     7    18    14    13    14     9    11    12     9    10    10     8     9    10
[3,]     9     9    16     9    10    10     9     7     8     8    11    12     8    11
[4,]    11     9     8     9     6     7    10    21    11    11    10     9    15     7
[5,]     8     5     6    10     2     9    13    12     7    14    11    11     5     6
[,45] [,46] [,47] [,48] [,49] [,50] [,51] [,52] [,53] [,54] [,55] [,56] [,57] [,58]
[1,]     9    11     6    10    10     8    13     7    11     8     7     9    12    11
[2,]     8    10    12     8    12    10     9     2    14    10    12     7     8    12
[3,]    10     5    16    12    12     5    11    12    16     9    12    14     9    10
[4,]    10    10     7    10    12    10     6    15    10     5     5     9    11     8
[5,]     9    14    10     9    10    11     6    14    13    15     7     6     6    11
[,59] [,60] [,61] [,62] [,63] [,64] [,65] [,66] [,67] [,68] [,69] [,70] [,71] [,72]
[1,]     8    13     8    11     7     5     5    13    13    11    10    10     6     6
[2,]    11    12     9     9    12    12    10    11     8    10    10    10     9    16
[3,]     7    14    10    14     5     6     9     8     4     9    12    13    17    10
[4,]     7    14    12    13     8    12     6     6    10    18    11    12     9     6
[5,]     9    12    10     9    13    12     8    11    15     8     7     7    11    11
[,73] [,74] [,75] [,76] [,77] [,78] [,79] [,80] [,81] [,82] [,83] [,84] [,85] [,86]
[1,]     6     8    12    10    16    16    12     6     8     9    14     9     4     9
[2,]    13    13     6    10    10     9     5     8    12    11    12     5    16    12
[3,]     5    18     9    11    11     9     6     5     2    12     9    11     9    11
[4,]    15    12     8     4     7    11    17     8     9     9    11    10    11     8
[5,]    15     7    14    11     5    15    13    10    11     8    11    16     3     7
[,87] [,88] [,89] [,90] [,91] [,92] [,93] [,94] [,95] [,96] [,97] [,98] [,99] [,100]
[1,]    13    10     8    12    10    17    11    10    10    10    11    10    10      6
[2,]    10     7    12     8    12     9    12    11    10    11    12    11     9     12
[3,]    13     9    10    13    11     7    14    10     8     9    17    11    13     12
[4,]     9    11    13     9     9     4    16    11     8     9     9     3    10      7
[5,]    11     7    11    11    12    15    12    10    11    11    12    14    12     12


|=========================================================================          |  88%
| replicate() created a matrix, each column of which contains 5 random numbers generated
| from a Poisson distribution with mean 10. Now we can find the mean of each column in
| my_pois using the colMeans() function. Store the result in a variable called cm.

> cm <- colMeans(my_pois)

| Great job!
  
  |===========================================================================        |  91%
| And let us take a look at the distribution of our column means by plotting a histogram with
| hist(cm).

hist(cm)


| All of the standard probability distributions are built into R, including exponential
| (rexp()), chi-squared (rchisq()), gamma (rgamma()), .... Well, you see the pattern.



###################################  7: Dates and Times ###########################################


R has a special way of representing dates and times, which can be helpful if you are
| working with data that show how something changes over time (i.e. time-series data) or if
| your data contain some other temporal information, like dates of birth.

...

  |==                                                                                 |   3%
| Dates are represented by the 'Date' class and times are represented by the 'POSIXct' and
| 'POSIXlt' classes. Internally, dates are stored as the number of days since 1970-01-01 and
| times are stored as either the number of seconds since 1970-01-01 (for 'POSIXct') or a
| list of seconds, minutes, hours, etc. (for 'POSIXlt').

d1 <- Sys.Date()

class(d1)
[1] "Date"

unclass(d1)
[1] 20355

| That is the exact number of days since 1970-01-01!
 
d1
[1] "2025-09-24"

|=================                                                                  |  20%
| What if we need to reference a date prior to 1970-01-01? Create a variable d2 containing
| as.Date("1969-01-01").

> d2 <- as.Date("1969-01-01")

unclass(d2)
[1] -365


t1 <- Sys.time()

t1
[1] "2025-09-24 12:06:48 CEST"

class(t1)
[1] "POSIXct" "POSIXt" 


| As mentioned earlier, POSIXct is just one of two ways that R represents time information.
| (You can ignore the second value above, POSIXt, which just functions as a common language
| between POSIXct and POSIXlt.) Use unclass() to see what t1 looks like internally -- the
| (large) number of seconds since the beginning of 1970.

> unclass(t1)
[1] 1758708409

|=================================                                                  |  40%
| By default, Sys.time() returns an object of class POSIXct, but we can coerce the result to
| POSIXlt with as.POSIXlt(Sys.time()). Give it a try and store the result in t2.

> t2 <- as.POSIXlt(Sys.time())

|======================================                                             |  46%
| Now view its contents.

> t2
[1] "2025-09-24 12:09:13 CEST"

| The printed format of t2 is identical to that of t1. Now unclass() t2 to see how it is
| different internally.

unclass(t2)
$sec
[1] 13.28779

$min
[1] 9

$hour
[1] 12

$mday
[1] 24

$mon
[1] 8

$year
[1] 125

$wday
[1] 3

$yday
[1] 266

$isdst
[1] 1

$zone
[1] "CEST"

$gmtoff
[1] 7200

attr(,"tzone")
[1] ""     "CET"  "CEST"
attr(,"balanced")
[1] TRUE

|===========================================                                        |  51%
| t2, like all POSIXlt objects, is just a list of values that make up the date and time. Use
| str(unclass(t2)) to have a more compact view.

> str(unclass(t2))
List of 11
$ sec   : num 13.3
$ min   : int 9
$ hour  : int 12
$ mday  : int 24
$ mon   : int 8
$ year  : int 125
$ wday  : int 3
$ yday  : int 266
$ isdst : int 1
$ zone  : chr "CEST"
$ gmtoff: int 7200
- attr(*, "tzone")= chr [1:3] "" "CET" "CEST"
- attr(*, "balanced")= logi TRUE


|=============================================                                      |  54%
| If, for example, we want just the minutes from the time stored in t2, we can access them
| with t2$min. Give it a try.

> 
  > t2$min
[1] 9

| Now that we have explored all three types of date and time objects, let us look at a few
| functions that extract useful information from any of these objects -- weekdays(),
| months(), and quarters().

weekdays(d1)
[1] "Wednesday"

month(t1)
[1] 9

months(t1)
[1] "September"

quarters(t2)
[1] "Q3"

| strptime() converts character vectors to POSIXlt. In that sense, it is similar to
| as.POSIXlt(), except that the input does not have to be in a particular format
| (YYYY-MM-DD).


To see how it works, store the following character string in a variable called t3:
"October 17, 1986 08:24" (with the quotes).

t3 <- "October 17, 1986 08:24"

| Now, use strptime(t3, "%B %d, %Y %H:%M") to help R convert our date/time object to a
| format that it understands. Assign the result to a new variable called t4. (You should
pull up the documentation for strptime() if you wud like to know more about how it works.)

 t4 <- strptime(t3, "%B %d, %Y %H:%M")
 
 t4
 [1] "1986-10-17 08:24:00 CET"
 
 class(t4)
 [1] "POSIXlt" "POSIXt" 
 
 Sys.time() > t1
 [1] TRUE
 
 Sys.time() - t1
 Time difference of 13.83847 mins
 
 Use difftime(Sys.time(), t1, units = 'days') to find the amount of time in DAYS that has
 | passed since you created t1.
 
 > difftime(Sys.time(), t1, units = 'days')
 Time difference of 0.01009266 days
 
 |===================================================================================| 100%
 | In this lesson, you learned how to work with dates and times in R. While it is important
 | to understand the basics, if you find yourself working with dates and times often, you may
 | want to check out the lubridate package by Hadley Wickham.
 
 #################### 8: Dates and Times with lubridate. #######################
 
 | Unfortunately, due to different date and time representations, this lesson is only
 | guaranteed to work with an "en_US.UTF-8" locale. To view your locale, type
 | Sys.getlocale("LC_TIME").
 
Sys.getlocale("LC_TIME")
 [1] "en_US.UTF-8"


library(lubridate)
help(package = lubridate)

this_day <- today()

this_day
[1] "2025-09-24"

| There are three components to this date. In order, they are year, month, and day. We can
| extract any of these components using the year(), month(), or day() function,
| respectively. Try any of those on this_day now.

> year(this_day)
[1] 2025

wday(this_day)
[1] 4

wday(this_day, label = TRUE)
[1] Wed
Levels: Sun < Mon < Tue < Wed < Thu < Fri < Sat

this_moment <- now()
this_moment
[1] "2025-09-24 12:27:40 CEST"

second(this_moment)
[1] 40.37897

| Fortunately, lubridate offers a variety of functions for parsing date-times. These
| functions take the form of ymd(), dmy(), hms(), ymd_hms(), etc., where each letter in the
| name of the function stands for the location of years (y), months (m), days (d), hours
| (h), minutes (m), and/or seconds (s) in the date-time being read 

my_date <- ymd("1989-05-17")

my_date
[1] "1989-05-17"

class(my_date)
[1] "Date"

ymd("1989 May 17")
[1] "1989-05-17"


| Despite being formatted differently, the last two dates had the year first, then the
| month, then the day. Hence, we used ymd() to parse them. What do you think the appropriate
| function is for parsing "March 12, 1975"? Give it a try.

mdy("March 12, 1975")
[1] "1975-03-12"


| We can even throw something funky at it and lubridate will often know the right thing to
| do. Parse 25081985, which is supposed to represent the 25th day of August 1985. Note that
| we are actually parsing a numeric value here -- not a character string -- so leave off the
| quotes.

dmy(25081985)
[1] "1985-08-25"

ymd("192012")
[1] NA

ymd("1920-1-2")
[1] "1920-01-02"

dt1
[1] "2014-08-23 17:23:02"

ymd_hms(dt1)
[1] "2014-08-23 17:23:02 UTC"

hms("03:22:14")
[1] "3H 22M 14S"

dt2
[1] "2014-05-14" "2014-09-22" "2014-07-11"

ymd(dt2)
[1] "2014-05-14" "2014-09-22" "2014-07-11"

update(this_moment, hours = 8, minutes = 34, seconds = 55)
[1] "2025-09-24 08:34:55 CEST"


this_moment <- update(this_moment, hours = 10, minutes = 16, seconds = 0)

this_moment
[1] "2025-09-24 10:16:00 CEST"

| To find the current date in New York, we'll use the now() function again. This time,
| however, we'll specify the time zone that we want: "America/New_York". Store the result in
| a variable called nyc. Check out ?now if you need help.

nyc <- now("America/New_York")

| For a complete list of valid time zones for use with lubridate, check out the following
| Wikipedia page:
| http://en.wikipedia.org/wiki/List_of_tz_database_time_zones

| Your flight is the day after tomorrow (in New York time), so we want to add two days to
| nyc. One nice aspect of lubridate is that it allows you to use arithmetic operators on
| dates and times. In this case, we wud like to add two days to nyc, so we can use the
| following expression: nyc + days(2). Give it a try, storing the result in a variable
| called depart.

> depart <- nyc + days(2)


depart
[1] "2025-09-26 06:44:20 EDT"

| So now depart contains the date of the day after tomorrow. Use update() to add the correct
| hours (17) and minutes (34) to depart. Reassign the result to depart.

depart <- update(depart, hours = 17, minutes = 34)


depart
[1] "2025-09-26 17:34:20 EDT"


| Your friend wants to know what time she should pick you up from the airport in Hong Kong.
| Now that we have the exact date and time of your departure from New York, we can figure
| out the exact time of your arrival in Hong Kong.

...

|================================================================                   |  77%
| The first step is to add 15 hours and 50 minutes to your departure time. Recall that nyc +
| days(2) added two days to the current time in New York. Use the same approach to add 15
| hours and 50 minutes to the date-time stored in depart. Store the result in a new variable
| called arrive.

arrive <- depart + hours(15) + minutes(50)

The with_tz() function returns a date-time as it would appear in another time zone. Use
| ?with_tz to check out the documentation.

?with_tz

| Use with_tz() to convert arrive to the "Asia/Hong_Kong" time zone. Reassign the result to
| arrive, so that it will get the new value.

> arrive <- with_tz(arrive, tzone = "Asia/Hong_Kong")

arrive
[1] "2025-09-27 21:24:20 HKT"

| Use the appropriate lubridate function to parse "June 17, 2008", just like you did near
| the beginning of this lesson. This time, however, you should specify an extra argument, tz
| = "Singapore". Store the result in a variable called last_time.

last_time <- mdy("June 17, 2008", tz = "Singapore")
[1] "2008-06-17 +08"

last_time
[1] "2008-06-17 +08"


| Pull up the documentation for interval(), which we will use to explore how much time has
| passed between arrive and last_time.

| Create an interval() that spans from last_time to arrive. Store it in a new variable
| called how_long.

> how_long <- interval(start = last_time, end = arrive)

as.period(how_long)
[1] "17y 3m 10d 21H 24M 20.4461760520935S"

This is where things get a little tricky. Because of things like leap years, leap seconds, and
| daylight savings time, the length of any given minute, day, month, week, or year is relative to
| when it occurs. In contrast, the length of a second is always the same, regardless of when it
| occurs.

...

|================================================================================== |  98%
| To address these complexities, the authors of lubridate introduce four classes of time related
| objects: instants, intervals, durations, and periods. These topics are beyond the scope of this
| lesson, but you can find a complete discussion in the 2011 Journal of Statistical Software paper
| titled 'Dates and Times Made Easy with lubridate'.

| This concludes our introduction to working with dates and times in lubridate. I created a little
| timer that started running in the background when you began this lesson. Type stopwatch() to see
| how long you have been working!

stopwatch()
[1] "54M 23.645171880722S"



############################ 9: Principles of Analytic Graphs#############################

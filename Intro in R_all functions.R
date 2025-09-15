
--------------------- R-PROMPTS ---------------------------------------
#
# | -- When you are at the R prompt (>):
# | -- Typing skip() allows you to skip the current question.
# | -- Typing play() lets you experiment with R on your own; swirl will ignore what you do...
# | -- UNTIL you type nxt() which will regain swirl's attention.
# | -- Typing bye() causes swirl to exit. Your progress will be saved.
# | -- Typing main() returns you to swirl's main menu.
# | -- Typing info() displays these options again.
#

-------------------- 6  Missing Values  --------------------------


# create vector and assign
x <- c(44, NA, 5 , NA)

# multiple by 3
x*3

# generate random numbers
y <- rnorm(1000)

# replicate
z <- rep(NA, 1000)

# create sample
my_data <- sample(c(y, z), 100).

# The is.na() function tells us whether each element of a vector is NA
my_na<- is.na(my_data)

# Use sum(my_na) to count the number NAs in the data.
sum(my_na)

# NAN
Inf-Inf

#-------------------- 7: Subsetting Vectors ---------------------
  
  > x
[1] -1.5014595         NA         NA  0.6386347  1.1108195         NA -1.1532574 -0.5468494
[9]         NA -1.1320996         NA -0.3353725         NA         NA -1.4965588 -0.2294488
[17]  1.5222217 -0.8186043         NA  0.2341531 -0.6971946         NA         NA         NA
[25]         NA  0.6747479         NA -1.0376944 -0.3660724         NA         NA         NA
[33] -0.4437739 -0.3683827         NA -1.5550445         NA -1.5528902         NA         NA

# try x[1:10] to view the first ten elements of x
x[1:10]

# contains all the NA-values
x[is.na(x)]

# create a vector that contains all the non-na values
y <- x[!is.na(x)]

# show all the values y > 0
y[y > 0]

# request only values of x that are both non-missing AND greater than zero
x[!is.na(x) & x >0]

# subset the 3rd, 5th, and 7th elements of x
x[c(3,5,7)]

x[0]
numeric(0)

x[3000]
# [1] NA

# Luckily, R accepts negative integer indexes. 
# Whereas x[c(2, 10)] gives us ONLY the 2nd and 10th elements 
# of x, x[c(-2, -10)] gives us all elements of x EXCEPT for the 2nd and 10 elements. 
Try| x[c(-2, -10)]

# Create a numeric vector with three named elements
vect <- c(foo = 11, bar = 2, norf = NA)

vect
# foo  bar norf 
# 11    2   NA 

# get the names of vect
names(vect)
 # "foo"  "bar"  "norf"

# create an unnamed vector vect2 
vect2 <- c(11, 2, NA)

# add the `names` attribute to vect2
names(vect2) <- c("foo", "bar", "norf")

#check that vect and vect2 are the same 
identical(vect, vect2)

# give us the second element of vect
vect["bar"]
vect[c("foo", "bar")]

------------- 8: Matrices and Data Frames ----------------------
  
# reate a vector containing the numbers 1 through 20
  my_vector <- 1:20

# View the contents of the vector you just created
my_vector
[1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

# The dim() function tells us the 'dimensions' of an object
dim(my_vector)
NULL

# find its length
length(my_vector)
[1] 20

# ive my_vector a `dim` attribute
dim(my_vector) <- c(4, 5)

# Use dim(my_vector) to confirm that we've set the `dim` attribute correctly.
dim(my_vector)
[1] 4 5

# | Another way to see this is by calling the attributes() function on my_vector. Try it now.
attributes(my_vector)
$dim
[1] 4 5

> my_vector
[,1] [,2] [,3] [,4] [,5]
[1,]    1    5    9   13   17
[2,]    2    6   10   14   18
[3,]    3    7   11   15   19
[4,]    4    8   12   16   20

# confirm it's actually a matrix by using the class() function
class(my_vector)
[1] "matrix" "array"

# Bring up the help file for the matrix() function
?matrix

#see if you can figure out how to create a matrix containing the same 
# numbers (1-20) and dimensions (4 rows, 5 columns)
> matrix(1:20,nrow = 4, ncol = 5 )

# creating a character vector containing the names of our patients 
patients <- c("Bill", "Gina", "Kelly", "Sean")

#use the cbind() function to 'combine columns'
cbind(patients, my_matrix)
patients                       
[1,] "Bill"   "1" "5" "9"  "13" "17"
[2,] "Gina"   "2" "6" "10" "14" "18"
[3,] "Kelly"  "3" "7" "11" "15" "19"
[4,] "Sean"   "4" "8" "12" "16" "20"

# include the names of our patients in the table without destroying 
# the integrity of our numeric data
my_data <- data.frame(patients, my_matrix)

#show class
class(my_data)
[1] data.frame

# use the colnames() function to set the `colnames` attribute for our data frame
colnames(my_data) <- cnames

my_data
  patient age weight bp rating test
1    Bill   1      5  9     13   17
2    Gina   2      6 10     14   18
3   Kelly   3      7 11     15   19
4    Sean   4      8 12     16   20

----------------- 9: Looking at Data -----------------------
"
This lesson will teach you how to answer these questions and more using R's built-in functions.
We'll be using a dataset constructed from the United States Department of Agriculture's PLANTS
Database (http://plants.usda.gov/adv_search.html).
"
  
# Type ls() to list the variables in your workspace, among which should be plants.  
> ls()
[1] "cnames"     "my_char"    "my_data"    "my_div"     "my_matrix"  "my_matrix2" "my_na"     
[8] "my_name"    "my_seq"     "my_seq2"    "my_sqrt"    "my_vector"  "num_vect"   "old.dir"   
[15] "patients"   "plants"     "testdir"    "testdir3"   "tf"         "v"          "vect"      
[22] "vect2"      "x"          "y"          "z" 

#nrow(plants) to see only the number of rows
nrow(plants) 
ncol(plants)

# how much space the dataset is occupying in memory
object.size(plants)

# preview the top of the dataset
head(plants)

#preview the top 10 of the dataset
head(plants,10)


# preview the end of 15 rows of the dataset
tail(plants, 15)

# Use summary(plants) to get a better feel for how each variable is distributed and how much
# of the dataset is missing.
summary(plants)
Scientific_Name      Duration         Active_Growth_Period Foliage_Color       pH_Min          pH_Max      
Length:5166        Length:5166        Length:5166          Length:5166        Min.   :3.000   Min.   : 5.100  
Class :character   Class :character   Class :character     Class :character   1st Qu.:4.500   1st Qu.: 7.000  
Mode  :character   Mode  :character   Mode  :character     Mode  :character   Median :5.000   Median : 7.300  
  
Precip_Min      Precip_Max     Shade_Tolerance      Temp_Min_F    
Min.   : 4.00   Min.   : 16.00   Length:5166        Min.   :-79.00  
1st Qu.:16.75   1st Qu.: 55.00   Class :character   1st Qu.:-38.00  
Median :28.00   Median : 60.00   Mode  :character   Median :-33.00  
Mean   :25.57   Mean   : 58.73                      Mean   :-22.53  
3rd Qu.:32.00   3rd Qu.: 60.00                      3rd Qu.:-18.00  
Max.   :60.00   Max.   :200.00                      Max.   : 52.00  
NAs    :4338    NAs    :4338                        NAs    :4328  


# we can see how many times each value actually occurs in the data with table()
table(plants$Active_Growth_Period)

# the most useful and concise function for understanding the *str*ucture of your data is str()
str(plants)


------------------------------ 10: Base Graphics ---------------------------
 " There is a school of thought that this approach is backwards, that we should teach ggplot2 first. 
 See http://varianceexplained.org/r/teach_ggplot2_to_beginners/ for an outline of this view."


Before plotting, it is always a good idea to get a sense of the data. Key R commands for doing so include,
| dim(), names(), head(), tail() and summary()

plot(cars)
# Note that 'plot' is short for scatterplot
?plot()
plot(x = cars$speed, y = cars$dist)

#Recreate the plot with the label of the x-axis set to "Speed".
plot(x = cars$speed, y = cars$dist, xlab = "Speed")
plot(x = cars$speed, y = cars$dist, ylab = "Stopping Distance", main = "My Plot")
plot(x = cars, sub = "My Plot Subtitle")

#Plot cars so that the plotted points are colored red. (Use col = 2 to achieve this effect.)
plot(cars, col = 2)

#Plot cars while limiting the x-axis to 10 through 15.  (Use xlim = c(10, 15) to achieve this effect.)
plot(cars, xlim = c(10,15))

# Plot cars using triangles.  (Use pch = 2 to achieve this effect.)
plot(cars, pch = 2)

# Load the mtcars data frame.
data(mtcars)

"boxplot(), like many R functions, also takes a "formula" argument, generally an expression with a tilde ("~")
| which indicates the relationship between the input variables. This allows you to enter something like mpg ~
| cyl to plot the relationship between cyl (number of cylinders) on the x-axis and mpg (miles per gallon) on the
| y-axis."
boxplot(formula = mpg ~ cyl, data = mtcars)
boxplot(mtcars, mpg ~ cyl)

#Use hist() with the vector mtcars$mpg to create a histogram.
hist(mtcars$mpg)

-------------------------- 11: Manipulating Data with dplyr -------------------------------
  "Package ‘dplyr’ loaded correctly!
| In this lesson, you'll learn how to manipulate data using dplyr. dplyr is a fast and powerful R package
| written by Hadley Wickham and Romain Francois that provides a consistent and concise grammar for manipulating
| tabular data.

One unique aspect of dplyr is that the same set of tools allow you to work with tabular data from a variety of
| sources, including data frames, data tables, databases and multidimensional arrays. In this lesson, we'll
| focus on data frames, but everything you learn will apply equally to other formats.


The first step of working with data in dplyr is to load the data into what the package authors call a 'data
| frame tbl' or 'tbl_df'. Use the following code to create a new tbl_df called cran:
| 
| cran <- tbl_df(mydf).

bl_df()` was deprecated in dplyr 1.0.0.
ℹ Please use `tibble::as_tibble()` instead.

From ?tbl_df, "The main advantage to using a tbl_df over a regular data frame is the printing." Let's see what
| is meant by this. Type cran to print our tbl_df to the console.

> cran
# A tibble: 225,468 × 11
       X date       time        size r_version r_arch r_os      package      version country ip_id
   <int> <chr>      <chr>      <int> <chr>     <chr>  <chr>     <chr>        <chr>   <chr>   <int>
 1     1 2014-07-08 00:54:41   80589 3.1.0     x86_64 mingw32   htmltools    0.2.4   US          1
 2     2 2014-07-08 00:59:53  321767 3.1.0     x86_64 mingw32   tseries      0.10-32 US          2
 3     3 2014-07-08 00:47:13  748063 3.1.0     x86_64 linux-gnu party        1.0-15  US          3
 4     4 2014-07-08 00:48:05  606104 3.1.0     x86_64 linux-gnu Hmisc        3.14-4  US          3
 5     5 2014-07-08 00:46:50   79825 3.0.2     x86_64 linux-gnu digest       0.6.4   CA          4
 6     6 2014-07-08 00:48:04   77681 3.1.0     x86_64 linux-gnu randomForest 4.6-7   US          3
 7     7 2014-07-08 00:48:35  393754 3.1.0     x86_64 linux-gnu plyr         1.8.1   US          3
 8     8 2014-07-08 00:47:30   28216 3.0.2     x86_64 linux-gnu whisker      0.3-2   US          5
 9     9 2014-07-08 00:54:58    5928 NA        NA     NA        Rcpp         0.10.4  CN          6
10    10 2014-07-08 00:15:35 2206029 3.0.2     x86_64 linux-gnu hflights     0.1     US          7
# ℹ 225,458 more rows
# ℹ Use `print(n = ...)` to see more rows

 Specifically, dplyr supplies five 'verbs' that cover most
| fundamental data manipulation tasks: select(), filter(), arrange(), mutate(), and summarize().

"

# Use select(cran, ip_id, package, country) to select only the ip_id, package,
# and country variables from the cran dataset.
select(cran, ip_id, package, country)

# Use select(cran, r_arch:country) to select all columns starting from r_arch and ending with country.
select(cran, r_arch:country)
select(cran, country:r_arch)

#Instead of specifying the columns we want to keep, 
#we can also specify the columns we want to throw away. To
# see how this works, do select(cran, -time) to omit the time column.
select(cran, -time)

"The negative sign in front of time tells select() that we DON'T want the time column. Now, let's combine
| strategies to omit all columns from X through size (X:size). To see how this might work, let's look at a
| numerical example with -5:20.

> -5:20
 [1] -5 -4 -3 -2 -1  0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

| Keep up the great work!

  |=============================================                                                          |  44%
| Oops! That gaves us a vector of numbers from -5 through 20, which is not what we want. Instead, we want to
| negate the entire sequence of numbers from 5 through 20, so that we get -5, -6, -7, ... , -18, -19, -20. Try
| the same thing, except surround 5:20 with parentheses so that R knows we want it to first come up with the
| sequence of numbers, then apply the negative sign to the whole thing.

"
select(cran, -(X:size))

# Use filter(cran, package == "swirl") to select all rows for which the package variable is equal to "swirl". Be
# | sure to use two equals signs side-by-side!
filter(cran, package == "swirl")
filter(cran, r_version == "3.1.1", country == "US")

#The conditions passed to filter() can make use of any of the standard comparison operators. Pull up the
#relevant documentation with ?Comparison (that's an uppercase C).

> ?Comparison

Relational Operators
Description
Binary operators which allow the comparison of values in atomic vectors.

Usage
x < y
x > y
x <= y
x >= y
x == y
x != y

#Use filter() to return all rows of cran for which r_version is NOT
#NA. Hint: You will need to use !is.na() as part of your second argument to filter().
filter(cran, !is.na(r_version))


#to order the ROWS of cran2 so that ip_id is in ascending order (from small to large), 
#type arrange(cran2, ip_id).
arrange(cran2,ip_id)
arrange(cran2,desc(ip_id))
arrange(cran2, country, desc(r_version), ip_id) 

"
| To illustrate the next major function in dplyr, let's take another subset of our original data. Use select()
| to grab 3 columns from cran -- ip_id, package, and size (in that order) -- and store the result in a new
| variable called cran3."

cran3 <- select(cran, ip_id, package, size)

# It's common to create a new variable based on the value of one or more variables already in a dataset. The
# | mutate() function does exactly this.
# We want to add a column called size_mb that contains the download size in megabytes. Here's the code to do it:
 
mutate(cran3, size_mb = size / 2^20)
mutate(cran3, size_mb = size / 2^20, size_gb = size_mb/2^10)
summarize(cran, avg_bytes = mean(size))

five main data manipulation 'verbs' in dplyr: 
select(), filter(),arrange(), mutate(), and summarize(). 
The last of these, summarize(), is most powerful when applied to grouped data.

------------------------------ 12: Getting and Cleaning Data ---------------------------------

#load data and group the data by package name
library(dplyr)
cran <- tbl_df(mydf)
rm("mydf")
by_package <- group_by(cran, package)

#use summarize() to apply mean(size) to the grouped data in by_package
summarize(by_package,mean(size))
# A tibble: 6,023 × 2
package     `mean(size)`
<chr>              <dbl>
  1 A3                62195.
2 ABCExtremes       22904.
3 ABCoptim          17807.
4 ABCp2             30473.
5 ACCLMA            33376.
6 ACD               99055.
7 ACNE              96100.
8 ACTCD            134746.
9 ADGofTest         12263.
10 ADM3            1077203.

# Compute four values, in the following order, from
# the grouped data:
#
# 1. count = n()
# 2. unique = n_distinct(ip_id)
# 3. countries = n_distinct(country)
# 4. avg_bytes = mean(size)
#
# A few thing to be careful of:
#
# 1. Separate arguments by commas
# 2. Make sure you have a closing parenthesis
# 3. Check your spelling!
# 4. Store the result in pack_sum (for 'package summary')
#
# You should also take a look at ?n and ?n_distinct, so
# that you really understand what is going on.

#pack_sum <- summarize(by_package,
                      count = ,
                      unique = ,
                      countries = ,
                      avg_bytes = )
n(by_package)
n(cran)


summarize(by_package, n())
summarize(by_package, n_distinct(ip_id))
summarize(by_package, n_distinct(country))
summarize(by_package, mean(size))

pack_sum <- summarize(by_package,
                      count = n(),
                      unique = n_distinct(ip_id),
                      countries = n_distinct(country),
                      avg_bytes = mean(size))
pack_sum

#We need to know the value of 'count' that splits the data into the top 1% and
#bottom 99% of packages based on total downloads. In statistics, this is called 
#the 0.99, or 99%, sample quantile. Use quantile(pack_sum$count,probs = 0.99) to determine this number.

probs = 0.99) to determine this number.quantile(pack_sum$count, probs = 0.99)

#Now we can isolate only those packages which had more than 679 total downloads. 
#Use filter() to select allrows from pack_sum for which 'count' is strictly 
#greater (>) than 679. Store the result in a new object called top_counts.

top_counts <- filter(pack_sum, count > 679)

#View all 61 rows with View(top_counts). Note that the 'V' in View() is capitalized.
View(top_counts)

#arrange() the rows of top_counts based on the 'count' column and assign the result to a new object called
#top_counts_sorted. We want the packages with the highest number of downloads at the top, which means we want
#'count' to be in descending order. If you need help, check out ?arrange and/or ?desc.

top_counts_sorted <- arrange(top_counts, desc(count))

#Like we did with 'count', let's find the 0.99, or 99%, quantile for the 'unique' variable:
quantile(pack_sum$unique, probs = 0.99).

#Apply filter() to pack_sum to select all rows corresponding to values of 'unique' that are strictly greater
#than 465. Assign the result to a object called top_unique.
top_unique <- filter(pack_sum, unique > 465)

#Now arrange() top_unique by the 'unique' column, in descending order, to see which packages were downloaded
#from the greatest number of unique IP addresses. Assign the result to top_unique_sorted.
top_unique_sorted <- arrange(top_unique, desc(unique))
View(top_unique_sorted)

# Don't change any of the code below. Just type submit()
# when you think you understand it.

# We've already done this part, but we're repeating it
# here for clarity.

by_package <- group_by(cran, package)
pack_sum <- summarize(by_package,
                      count = n(),
                      unique = n_distinct(ip_id),
                      countries = n_distinct(country),
                      avg_bytes = mean(size))

# Here's the new bit, but using the same approach we've
# been using this whole time.

top_countries <- filter(pack_sum, countries > 60)
result1 <- arrange(top_countries, desc(countries), avg_bytes)

# Print the results to the console.
print(result1)

# Don't change any of the code below. Just type submit()
# when you think you understand it. If you find it
# confusing, you're absolutely right!

result2 <-
  arrange(
    filter(
      summarize(
        group_by(cran,
                 package
        ),
        count = n(),
        unique = n_distinct(ip_id),
        countries = n_distinct(country),
        avg_bytes = mean(size)
      ),
      countries > 60
    ),
    desc(countries),
    avg_bytes
  )

print(result2)

# Read the code below, but don't change anything. As
# you read it, you can pronounce the %>% operator as
# the word 'then'.
#
# Type submit() when you think you understand
# everything here.

result3 <-
  cran %>%
  group_by(package) %>%
  summarize(count = n(),
            unique = n_distinct(ip_id),
            countries = n_distinct(country),
            avg_bytes = mean(size)
  ) %>%
  filter(countries > 60) %>%
  arrange(desc(countries), avg_bytes)

# Print result to console
print(result3)




# select() the following columns from cran. Keep in mind
# that when you're using the chaining operator, you don't
# need to specify the name of the data tbl in your call to
# select().
#
# 1. ip_id
# 2. country
# 3. package
# 4. size
#
# The call to print() at the end of the chain is optional,
# but necessary if you want your results printed to the
# console. Note that since there are no additional arguments
# to print(), you can leave off the parentheses after
# the function name. This is a convenient feature of the %>%
# operator.

cran %>%
  select(ip_id, country, package, size) %>%
  print

# Use mutate() to add a column called size_mb that contains
# the size of each download in megabytes (i.e. size / 2^20).
#
# If you want your results printed to the console, add
# print to the end of your chain.

cran %>%
  select(ip_id, country, package, size) %>%
  mutate( size_mb = size / 2^20) %>%
  print

# Use filter() to select all rows for which size_mb is
# less than or equal to (<=) 0.5.
#
# If you want your results printed to the console, add
# print to the end of your chain.

cran %>%
  select(ip_id, country, package, size) %>%
  mutate(size_mb = size / 2^20) %>%
  filter(size_mb <= 0.5) %>%
  print


# arrange() the result by size_mb, in descending order.
#
# If you want your results printed to the console, add
# print to the end of your chain.

cran %>%
  select(ip_id, country, package, size) %>%
  mutate(size_mb = size / 2^20) %>%
  filter(size_mb <= 0.5) %>%
  arrange(desc(size_mb)) %>%
  print


------------------------ 13: Tidying Data with tidyr  --------------------------
  library(tidyr)
  
|========                                                                                               |   7%
| Tidy data is formatted in a standard way that facilitates exploration and analysis and works seamlessly with
| other tidy data tools. Specifically, tidy data satisfies three conditions:
| 
| 1) Each variable forms a column
| 
| 2) Each observation forms a row
| 
| 3) Each type of observational unit forms a table

| Scroll up to review the three characteristics of tidy data. Any dataset that violates at least one of these is
| considered messy. Therefore, all of the following are characteristics of messy data, EXCEPT...

1: A single observational unit is stored in multiple tables
2: Variables are stored in both rows and columns
3: Multiple variables are stored in one column
4: Every column contains a different variable
5: Multiple types of observational units are stored in the same table
6: Column headers are values, not variable names

Selection: 4

| That's correct!

The first problem is when you have column headers that are values, not variable names. I've created a simple
| dataset called 'students' that demonstrates this scenario. Type students to take a look.

>> students
grade male female
1     A    5      3
2     B    4      1
3     C    8      6
4     D    4      5
5     E    5      5

| This dataset actually has three variables: grade, sex, and count. The first variable, grade, is already a
| column, so that should remain as it is. The second variable, sex, is captured by the second and third column
| headings. The third variable, count, is the number of students for each combination of grade and sex.

| Using the help file as a guide, call gather() with the following arguments (in order): students, sex, count,
| -grade. Note the minus sign before grade, which says we want to gather all columns EXCEPT grade.

> gather(students, sex, count, -grade)
grade    sex count
1      A   male     5
2      B   male     4
3      C   male     8
4      D   male     4
5      E   male     5
6      A female     3
7      B female     1
8      C female     6
9      D female     5
10     E female     5


| The second messy data case we will look at is when multiple variables are stored in one column. 
Type students2 to see an example of this.

> students2
  grade male_1 female_1 male_2 female_2
1     A      7        0      5        8
2     B      4        0      5        8
3     C      7        4      5        6
4     D      8        2      8        1
5     E      8        4      1        0

res <- gather(students2, key = sex_class, value = count, -grade)

> res
grade sex_class count
1      A    male_1     7
2      B    male_1     4
3      C    male_1     7
4      D    male_1     8
5      E    male_1     8
6      A  female_1     0
7      B  female_1     0
8      C  female_1     4
9      D  female_1     2
10     E  female_1     4
11     A    male_2     5
12     B    male_2     5
13     C    male_2     5
14     D    male_2     8
15     E    male_2     1
16     A  female_2     8
17     B  female_2     8
18     C  female_2     6
19     D  female_2     1
20     E  female_2     0


| Call separate() on res to split the sex_class column into sex and class. You only need to specify the first
| three arguments: data = res, col = sex_class, into = c("sex", "class"). You do not have to provide the argument
| names as long as they are in the correct order.

> separate( data = res, col = sex_class, into = c("sex", "class"))
   grade    sex class count
1      A   male     1     7
2      B   male     1     4
3      C   male     1     7
4      D   male     1     8
5      E   male     1     8
6      A female     1     0
7      B female     1     0
8      C female     1     4
9      D female     1     2
10     E female     1     4
11     A   male     2     5
12     B   male     2     5
13     C   male     2     5
14     D   male     2     8
15     E   male     2     1
16     A female     2     8
17     B female     2     8
18     C female     2     6
19     D female     2     1
20     E female     2     0


+++++++++++SCRIPT 1 GATHER AND SEPARATE

# Repeat your calls to gather() and separate(), but this time
# use the %>% operator to chain the commands together without
# storing an intermediate result.
#
# If this is your first time seeing the %>% operator, check
# out ?chain, which will bring up the relevant documentation.
# You can also look at the Examples section at the bottom
# of ?gather and ?separate.
#
# The main idea is that the result to the left of %>%
# takes the place of the first argument of the function to
# the right. Therefore, you OMIT THE FIRST ARGUMENT to each
# function.
#
students2 %>%
  gather(key = sex_class, value = count, -grade) %>%
  separate(col = sex_class, into = c("sex", "class")) %>%
  print

grade    sex class count
1      A   male     1     7
2      B   male     1     4
3      C   male     1     7
4      D   male     1     8
5      E   male     1     8
6      A female     1     0
7      B female     1     0
8      C female     1     4
9      D female     1     2
10     E female     1     4
11     A   male     2     5
12     B   male     2     5
13     C   male     2     5
14     D   male     2     8
15     E   male     2     1
16     A female     2     8
17     B female     2     8
18     C female     2     6
19     D female     2     1
20     E female     2     0

| A third symptom of messy data is when variables are stored in both rows and columns. students3 provides an
| example of this. Print students3 to the console.

> students3
name    test class1 class2 class3 class4 class5
1  Sally midterm      A   <NA>      B   <NA>   <NA>
  2  Sally   final      C   <NA>      C   <NA>   <NA>
  3   Jeff midterm   <NA>      D   <NA>      A   <NA>
  4   Jeff   final   <NA>      E   <NA>      C   <NA>
  5  Roger midterm   <NA>      C   <NA>   <NA>      B
6  Roger   final   <NA>      A   <NA>   <NA>      A
7  Karen midterm   <NA>   <NA>      C      A   <NA>
  8  Karen   final   <NA>   <NA>      C      A   <NA>
  9  Brian midterm      B   <NA>   <NA>   <NA>      A
10 Brian   final      B   <NA>   <NA>   <NA>      C

+++++++++++SCRIPT 2 GATHER MORE A:Z

# Call gather() to gather the columns class1
# through class5 into a new variable called class.
# The 'key' should be class, and the 'value'
# should be grade.
#
# tidyr makes it easy to reference multiple adjacent
# columns with class1:class5, just like with sequences
# of numbers.
#
# Since each student is only enrolled in two of
# the five possible classes, there are lots of missing
# values (i.e. NAs). Use the argument na.rm = TRUE
# to omit these values from the final result.
#
# Remember that when you're using the %>% operator,
# the value to the left of it gets inserted as the
# first argument to the function on the right.
#
# Consult ?gather and/or ?chain if you get stuck.
#
students3 %>%
  gather( key = class, value = grade , class1:class5 ,na.rm = TRUE) %>%
  print

name    test  class grade
1  Sally midterm class1     A
2  Sally   final class1     C
9  Brian midterm class1     B
10 Brian   final class1     B
13  Jeff midterm class2     D
14  Jeff   final class2     E
15 Roger midterm class2     C
16 Roger   final class2     A
21 Sally midterm class3     B
22 Sally   final class3     C
27 Karen midterm class3     C
28 Karen   final class3     C
33  Jeff midterm class4     A
34  Jeff   final class4     C
37 Karen midterm class4     A
38 Karen   final class4     A
45 Roger midterm class5     B
46 Roger   final class5     A
49 Brian midterm class5     A
50 Brian   final class5     C


+++++++++++SCRIPT 3 SPREAD

# This script builds on the previous one by appending
# a call to spread(), which will allow us to turn the
# values of the test column, midterm and final, into
# column headers (i.e. variables).
#
# You only need to specify two arguments to spread().
# Can you figure out what they are? (Hint: You don't
# have to specify the data argument since we're using
# the %>% operator.
#
students3 %>%
  gather(class, grade, class1:class5, na.rm = TRUE) %>%
  spread(test, grade) %>%
print

name  class final midterm
1  Brian class1     B       B
2  Brian class5     C       A
3   Jeff class2     E       D
4   Jeff class4     C       A
5  Karen class3     C       C
6  Karen class4     A       A
7  Roger class2     A       C
8  Roger class5     A       B
9  Sally class1     C       A
10 Sally class3     C       B

+++++++++++SCRIPT 4 MUTATE


# We want the values in the class columns to be
# 1, 2, ..., 5 and not class1, class2, ..., class5.
#
# Use the mutate() function from dplyr along with
# parse_number(). Hint: You can "overwrite" a column
# with mutate() by assigning a new value to the existing
# column instead of creating a new column.
#
# Check out ?mutate and/or ?parse_number if you need
# a refresher.
#
students3 %>%
  gather(class, grade, class1:class5, na.rm = TRUE) %>%
  spread(test, grade) %>%
  mutate(class = parse_number(class)) %>%
  print
submit()

name class final midterm
1  Brian     1     B       B
2  Brian     5     C       A
3   Jeff     2     E       D
4   Jeff     4     C       A
5  Karen     3     C       C
6  Karen     4     A       A
7  Roger     2     A       C
8  Roger     5     A       B
9  Sally     1     C       A
10 Sally     3     C       B

+++++++++++SCRIPT 5 SELECT

#The fourth messy data problem we will look at occurs when multiple observational units are stored in the same
#table. students4 presents an example of this. Take a look at the data now.

> students4
    id  name sex class midterm final
1  168 Brian   F     1       B     B
2  168 Brian   F     5       A     C
3  588 Sally   M     1       A     C
4  588 Sally   M     3       B     C
5  710  Jeff   M     2       D     E
6  710  Jeff   M     4       A     C
7  731 Roger   F     2       C     A
8  731 Roger   F     5       B     A
9  908 Karen   M     3       C     C
10 908 Karen   M     4       A     A


# Complete the chained command below so that we are
# selecting the id, name, and sex column from students4
# and storing the result in student_info.
#
student_info <- students4 %>%
  select((id) ,(name) ,(sex)) %>%
  print
submit()

id  name sex
1  168 Brian   F
2  168 Brian   F
3  588 Sally   M
4  588 Sally   M
5  710  Jeff   M
6  710  Jeff   M
7  731 Roger   F
8  731 Roger   F
9  908 Karen   M
10 908 Karen   M


+++++++++++SCRIPT 6 UNIQUE

# Add a call to unique() below, which will remove
# duplicate rows from student_info.
#
# Like with the call to the print() function below,
# you can omit the parentheses after the function name.
# This is a nice feature of %>% that applies when
# there are no additional arguments to specify.
#
student_info <- students4 %>%
  select(id, name, sex) %>%
  unique %>%
  print
submit()


id  name sex
1 168 Brian   F
3 588 Sally   M
5 710  Jeff   M
7 731 Roger   F
9 908 Karen   M


+++++++++++SCRIPT 7 GRADEBOOK


# select() the id, class, midterm, and final columns
# (in that order) and store the result in gradebook.
#
gradebook <- students4 %>%
  select(id, class, midterm,final) %>%
  print
submit()

id class midterm final
1  168     1       B     B
2  168     5       A     C
3  588     1       A     C
4  588     3       B     C
5  710     2       D     E
6  710     4       A     C
7  731     2       C     A
8  731     5       B     A
9  908     3       C     C
10 908     4       A     A

#Use dplyrs mutate() to add a new column to the passed table. The column should be called status and the
#value, "passed" (a character string), should be the same for all students. 'Overwrite' the current version of
#passed with the new one.

passed <- passed %>% mutate(status = "passed")
failed <- failed %>% mutate(status = "failed")
bind_rows(passed, failed)

ä#name class final status
1  Brian     1     B passed
2  Roger     2     A passed
3  Roger     5     A passed
4  Karen     4     A passed
5  Brian     5     C failed
7  Sally     3     C failed
8   Jeff     2     E failed
9   Jeff     4     C failed
10 Karen     3     C failed


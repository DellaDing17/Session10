library(stringr)
#1
print("\"")
cat("\"")
cat("DSO\n545")
cat("DSO\t545")

#2
cat(":-\\")
cat("(^-^\")")
cat("@_'-'")
cat("\\m/")

#3
?str_locate
?str_sub

#4
str_locate(string = "great",pattern = "a")
str_locate("fantastic","a")
str_locate_all("fantastic","a")
str_locate("super","a")
str_locate(c("fantastic","great","super"),pattern = "a")

#5
str_sub(string = "testing",start = 1,end = 3)
str_sub(string = "testing",start = 4,end = 7)

#6
input=c("abc","defg")
str_sub(input,c(2,3))

email=readRDS("email.rds")
email[1]
cat(email[1])

#7
str_locate(email[1],pattern = "\n\n")

#8
header=str_sub(email[1],start=1,end=842)
cat(header)

body=str_sub(email[1],start = 843)
cat(body)



#10
breaks=str_locate(email,"\n\n")
headers=str_sub(email,start = 1,end = breaks[,1])
bodys=str_sub(email,start = breaks[,2])
cat(headers[3])
cat(bodys[5])



getwd()

num1 = 7
class(num1)
mode(num1)
typeof(num1)


num2 = 16.82
num2
mode(num2)
typeof(num2)


#integer

is.integer(num2)
y = as.numeric(num2)
y
mode(y)
typeof(num2)

#convertendo para inteiro

as.integer('3.23')

as.integer("joe")
as.integer('jose')
as.integer(TRUE)


#caracteres

char ='A'
char
mode(char)
typeof(char)

char3 = c("Data","Science","Academy")
 mode(char3)
typeof(char3) 

#complexo

complex = 2.5+6i
complex
mode(complex)
typeof(complex)
sqrt(-1)
sqrt(-1+0i)
sqrt(as.complex(-1))

#logic

x = 1; y=2
z= x+y
z
class(z)


u= T; v=F;
class(u)


u&v
u|v
!u


#operacoes com 0

5/0
0/5

'Joe'/5

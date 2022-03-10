

#estrutura de controle

#condicionais if-Else

#if(condição){
 #conjunto de tarefas
#}else{
  #outro conjunto de tarefa
#}

#ifelse(condição,tarefa1,tarefa2)

#LOOP FOR for(i in 1:N){ print("isso é um loop)}

#LOOP WHILE  while(condição satisfeita)}{
#conjunto de tarefas
#}

#repetiçoes
rep(x,y)
#rep(repita x, repita y vezes)

repeat{}

#ifelse 
x = 25
if(x<30){"Este número é menor que 30"}

if(x<30){"Este numero é menor que 30"}

#else

if(x<30){"Este numero é menor que 30"}

#else
if(x<7){"Este numero é menor que 7"}else{ "este numero mão é menor que 7 "}

x = 7
if(x<7)
{"Este numero é menor que 7"}else if(x==7){"esse numero é igual a 7"}else{"Este numero é menor que 7"}


#expressoes ifelse aninhadas
x = 5
ifelse(x<5,"é menor que cinco", ifelse(x==5, "igual a cinco", "Maior que 5"))

#expressoes if estruturas dentro funções

func <-function(x,y){
  ifelse(y<7, x+y,"Não encontrado")
}

func(2,2)
func(10,2)

#rep
rep(rnorm(10),5)

#repeat

x = 5
repeat{
  x= x+3
  if(x> 99)
    break;
    print(x)
}

#Loop for

for (i in 1:22) {
  if(i==13 | i ==15)
    next
  print(i)
}

#loop while

x = 1
while(x<5){
  x = x+1
  print(x)
}

#loop while nao sera executado

y = 6
while (y<5) {
  y= y+10
  print(y)
}
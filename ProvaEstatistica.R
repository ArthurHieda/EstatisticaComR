#Estruturas de Condição
#if
a = 5
b = 5
c = 8
if(a != b & b != c & c != a){cat("É um triângulo escaleno")}
#if else
a = 10
b = 10
c = 12
if(a != b & b != c & c != a){
  cat("É um triângulo escaleno")}else{
    cat("Não é um triângulo escaleno")}
#ifelse
x = -25
y = 25
ifelse(x>=0, sqrt(x), "O número é negativo")
ifelse(y>=0, sqrt(y), "O número é negativo")
#sla meo
x = 1:5
ifelse(x <= 3,(x**2) / 3, 2*x + 5)
#sal meo 
y = -3:2
ifelse(y == 0, (y + 2**3) / 4, 2 * y + 3)
#las meo
#A)
x = 3
y = 1
if(x + 2*y == 5 & 3*x - 5*y == 4) {
  cat("É solução do sistema")}else{
    cat("Não é solução do sistema")}
#B)
x = -2
y = -1
if(x + 2*y == 5 & 3*x - 5*y == 4) {
  cat("É solução do sistema.")}else{
    cat("Não é solução do sistema.")}
#vish meo
x = 1
while(x<=10){print(x); x = x+1}
#repeat
x = rep(3, 10)
x

y = rep("Não", 50)
y

#Estrutura de repetição
corrida <-data.frame(Pace = c(5.55, 4.59, 5.21, 6.05), Posicao= c(9, 2, 6, 4), row.names= c("C1", "C2", "C3", "C4"))
corrida

for(i in corrida[,2]){print(i)}
#Randômicos
#Código será sample(tamanho, qtd de números sorteados, repetição)
sample(5:20, 10, replace=F)
#Números decimais
runif(10, min=1, max=2)
sorteio = runif(10, min=0, max=1)
round(sorteio,2)
set.seed(1)
sample(1:20, 7, replace = T)
#Com palavras 
#1
print("Quem está usando calcinha em segredo?")
Amostra = c("Marra", "Fabriza", "Lugas", "Arteko")
sample(Amostra, 1, replace=F, prob=NULL)
#2
pesos = c(0.1, 0.1, 0.7, 0.1)
print("Quem faz amor com o suco (fake natty)?")
Amostra = c("Marra", "Fabriza", "Lugas", "Arteko")
sample(Amostra, 1, replace=F, prob=pesos)

#Exercíocio 1
pnorm(180,174,8, lower.tail = T)

a = pnorm(160,174,8, lower.tail = T) 
b = pnorm(163,174,8, lower.tail = T)
c = pnorm(183, 174, 8, lower.tail = F)
(b - a) + c

#Exercício 2
#Coeficiente de variação = desvio padrão / média
#A
dp = 0.55 * 20

d = pnorm(10,20,dp, lower.tail = T)
e = pnorm(15,20,dp, lower.tail = T)
f = pnorm(21,20,dp, lower.tail = T)
g = pnorm(22,20,dp, lower.tail = T)
h = pnorm(30,20,dp, lower.tail = F)

(e-d)+(g-f)+h

#B
x = qnorm(0.30,20,dp,lower.tail = T)
y = qnorm(0.70,20,dp,lower.tail = T)
y-x

#C
z = qnorm(0.85,20,dp,lower.tail = T)
z

#Exercício 3

m = pnorm(161,170,(5/sqrt(10)),lower.tail = T)
n = pnorm(165,170,(5/sqrt(10)),lower.tail = T)
n-m

mean(172,175,163,162,155,170,172,1665,168,170)
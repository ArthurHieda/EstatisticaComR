#Exercício de R sobre Análise Multivariada
Dados = data.frame(horas_estudo    = c(4,6,3,5,7), 
                   horas_sono      = c(7,6,8,7,6),
                   pontuacao       = c(85,90,75,80,95))
plot(Dados)
cov(Dados)
cor(Dados)
corrplot(cor(Dados), method = "number") #Quando no gráfico o número for 
#negativo ele será considerado inversamente proporcional a váriavel 
#comparada, diferente de quando for diretamente proporcional, ou seja, 
#portanto, com uma variável positiva

modelo = lm(pontuacao~horas_estudo+horas_sono, data = Dados)

graph = scatterplot3d(Dados$pontuacao~Dados$horas_estudo+Dados$horas_sono,
                      pch = 16, angle = 30, color = "steelblue", box = FALSE,
                      xlab = "Horas de Estudo", ylab = "Horas de Sono",
                      zlab = "Pontuação")
graph$plane3d(modelo,col = "black", draw_polygon = TRUE)

summary(modelo) #Se o p-value for maior que 0.05 aceitamos o H0 portanto o
#modelo não será significativo, caso fosse menor que 0.05 o modelo seria
#significativo (Acietrando o H1)
----------------------
#Aqui servirá para prever uma variável apresentando apenas duas variáveis
nova_obs = data.frame(horas_estudo = 10, horas_sono = 8)
previsão = predict(modelo, newdata = nova_obs)
previsão
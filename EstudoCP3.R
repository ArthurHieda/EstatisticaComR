#Criando a base de dados dita pelo exemplo CAP11
Dados = data.frame(Qtd_Poluente=c(1,2,3,4,5,6),DanoEco=c(3,6,7,10,10,12))
#Gráfico de Disperção
plot(Dados$Qtd_Poluente, Dados$DanoEco)
#Covariância
cov(Dados$Qtd_Poluente, Dados$DanoEco)
#Correlação Linear de Pearson
cor(Dados$Qtd_Poluente, Dados$DanoEco)
#Gráfico de correlação Linear de Pearson
corrplot(cor(Dados), method="number")
#Fazendo o Gráfico de forma mais bonita
plot(Dados$Qtd_Poluente, Dados$DanoEco,
     xlab = "Quantidade de Poluentes",
     ylab = "Dano Ecológico",
     main = "Gráfico de Dispersão com a Reta de Regressão")
#Modelo de Regressão Linear
modelo = lm(DanoEco~Qtd_Poluente, data=Dados) #lm = linear model
abline(modelo, col="red") # abline é usado para criar a linha no gráfico
#Analisando o modelo
summary(modelo)
#A Fórmula é Y = 2,0000 + 1,7143X + E ---- R-squared = 0.9525
#Quanro mais próximo de 1 melhor o modelo se relaciona com o Y
#O p-value do Teste de F é igual a 0.0008462
#Se o p-value <= 0.05 É Rejeitado o H0
#Se o p-valua > 0.05 É Aceito o H1
#H0 = (O modelo não é significativo)
#H1 = (O modelo é significativo)

#Tentando novos valores
nova_obs = data.frame(Qtd_Poluente=9)
previsao = predict(modelo, newdata=nova_obs)
previsao

#1
Dados1 = data.frame(Quantidade=c(100,200,400,500),VolumedeAgua=c(50,70,100,120))
plot(Dados1$Quantidade, Dados1$VolumedeAgua,
     xlab = "Volume de Agua",
     ylab = "Quantidade",
     main = "Gráfico de Dispersão com a Reta de Regressão")
cov(Dados1$Quantidade, Dados$VolumedeAgua)
cor(Dados1$Quantidade, Dados$VolumedeAgua)
corrplot(cor(Dados1), method="number")
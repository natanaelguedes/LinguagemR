churn <- read.csv('CAP06/Telco-Customer-Churn.csv')
View(churn)
str(churn)

# Odds Ratio

# Uma das medidas de desempenho interessantes na regressão logística é Odds Ratio. 
# Basicamente, odds ratio é a chance de um evento acontecer.
exp(cbind(OR=coef(LogModel), confint(LogModel)))

LogM
# Para cada aumento de unidade no encargo mensal (Monthly Charge), 
# há uma redução de 2,5% na probabilidade do cliente cancelar a assinatura.


# Árvore de Decisão

# Visualização da Árvore de Decisão
# Para fins de ilustração, vamos usar apenas três variáveis para plotar 
# árvores de decisão, elas são “Contrato”, “tenure_group” e “PaperlessBilling”.
?ctree
tree <- ctree(Churn ~ Contract+tenure_group+PaperlessBilling, training)
plot(tree, type='simple')

# 1. Das três variáveis que usamos, o Contrato é a variável mais importante 
# para prever a rotatividade de clientes ou não.
# 2. Se um cliente em um contrato de um ano ou de dois anos, 
# não importa se ele (ela) tem ou não a PapelessBilling, ele (ela) é menos propenso 
# a se cancelar a assinatura.
# 3. Por outro lado, se um cliente estiver em um contrato mensal, 
# e no grupo de posse de 0 a 12 meses, e usando o PaperlessBilling, 
# esse cliente terá mais chances de cancelar a assinatura.


# Matriz de Confusão da Árvore de Decisão
# Estamos usando todas as variáveis para tabela de matriz de confusão de produto e fazer previsões.
pred_tree <- predict(tree, testing)
print("Confusion Matrix Para Decision Tree"); table(Predicted = pred_tree, Actual = testing$Churn)


# Precisão da árvore de decisão
p1 <- predict(tree, training)
tab1 <- table(Predicted = p1, Actual = training$Churn)
tab2 <- table(Predicted = pred_tree, Actual = testing$Churn)
print(paste('Decision Tree Accuracy',sum(diag(tab2))/sum(tab2)))


##### Random Forest #####

set.seed(2017)
?randomForest
rfModel <- randomForest(Churn ~ ., data = training)
print(rfModel)
plot(rfModel)

# A previsão é muito boa ao prever "Não". 
# A taxa de erros é muito maior quando se prevê "sim".

# Prevendo valores com dados de teste
pred_rf <- predict(rfModel, testing)

# Confusion Matrix
print("Confusion Matrix Para Random Forest"); table(testing$Churn, pred_rf)

# Recursos mais importantes
?varImpPlot
varImpPlot(rfModel, sort=T, n.var = 10, main = 'Top 10 Feature Importance')




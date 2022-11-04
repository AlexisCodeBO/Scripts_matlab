%%LISTA DE COMANDOS EJERCICIO 1%%
%Revisar el libro de estadistica, matlab y R para entender
%Se generó mediante el import data las matrices y tablas
clear all

Pmax=MeteoS1(:,1)
MeteoS1T2 % variable de tabla
Pmax ? 20 %(low) Obtener valores verdaderos menores a 20
20 < Pmax ? 80 %(moderate)Obtener valores verdaderos entre 20 y 80
Pmax > 80 %(high) Obtener valores altos verdaderos mayores a 80
PClass = 1 + (PMax > 20) + (PMax > 80)
MeteoTabla= [MeteoTabla PClass]% Imprimir el valor máximo por clase en meteo matrix
MeteoTabla.PClass=PClass % Imprimir la tabla variable
T=tabulate(PClass) % obtener clasificación de los estaciones

%Comando texto memo1

PClass = 1 + (MeteoS1.Pmax >20) + (MeteoS1.Pmax > 80)
MeteoS1.PClass= ordinal(PClass,{'low', 'moderate', 'high'});
ss= summary(MeteoS1.PClass)
tabulate(MeteoS1.PClass)
tt=tabulate(MeteoS1.PClass)
hist(Meteo1.PClass)
Porc=(ss/25)*100
Conteo=[ss; sum(ss)];
Porcentaje =[Porc; sum(Porc)]
TRes = table(Conteo, Porcentaje, 'RowNames', {'low', 'moderate', 'high', 'TOTAL'})
%generar tabla latex
table2latex(TRes, 'Tabla1.text')

import numpy as np
import matplotlib.pyplot as plt

p1 = ['1999 a 2011']
p2 =[ '2012 a 2018']
p3 = ['2019']


plt.bar(p1, 24, width=0.25, label = 'Primeiro Periodo', color = 'b')
plt.bar(p2, 7, width=0.25, label = 'Segundo Periodo', color = 'y')
plt.bar(p3, 48, width=0.25, label = 'Terceiro Periodo', color = 'r')

# inseri uma legenda no gráfico
plt.title('Reuniões do PMA por periodo'
          '')
plt.legend(['Periodo 1(32%)','Periodo 2(5%)','Periodo 3(63%)'])
plt.show()
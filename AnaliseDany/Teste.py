import pandas as pd
from matplotlib.pyplot import *

df = pd.DataFrame({'A':26, 'B':20}, index=['N'])
df.plot(kind='bar')
df.show()
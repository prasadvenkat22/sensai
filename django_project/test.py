import json
import pandas as pd
import pandas_datareader.data as web
import numpy as np
import datetime as dt
import time
from pandas.io.json import json_normalize
import matplotlib.pyplot  as plt
from matplotlib import  style
style.use('ggplot')
 #start = dt.datetime(2019,7,31)
    #end = dt.datetime(2019, 8, 15)
start = dt.datetime(2020,1,1)
end = dt.datetime(2020,12 , 15)
print(start,"", end)
prices = web.DataReader('AAPL','yahoo', start, end)['Adj Close']
returns = prices.pct_change()
print(prices)
fig =  plt.figure()
fig.suptitle("Actual prices, STD: AAPL, 2020")
plt.plot(prices)
plt.axhline(y= prices.std(), color= 'b', linestyle='-')
plt.axhline(y= prices.mean(), color= 'r', linestyle='-')

plt.xlabel('Day')
plt.ylabel('Price')
plt.show()


last_price = prices[-1]

no_simuilation_trials = 1000
#define time horizon how many days in future going to go?
no_of_days = 252


simulation_df = pd.DataFrame()

for x in range(no_simuilation_trials):
    # df fro simulation
    #start value or first price define it as 
    count = 0
    daily_stdev = returns.std()
    print(daily_stdev)
    price_series = []

    price = last_price * (1 + np.random.normal(0,daily_stdev))
    #generate random prices
    #print(price)
    price_series.append(price)
    # start next row....and so on till 251
    for y in range(no_simuilation_trials):
        
        if count == 60:
            break
        price = price_series[count]* (1 + np.random.normal(0,daily_stdev))
        #what we are doing is taking last price from there we multipl by last price calculated in simulation
        # for future prices
        price_series.append(price)
        count +=1

    simulation_df[x] = price_series
    #print(simulation_df)

fig =  plt.figure()
fig.suptitle("Monte Carlo Simulation: AAPL, 2020")
plt.plot(simulation_df)
plt.axhline(y= last_price, color= 'b', linestyle='-')
plt.xlabel('Day')
plt.ylabel('Price')
plt.show()

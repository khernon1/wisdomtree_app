# README

### Goal - Query the database to get price and shares outstanding for every day there is a price. There is a price for every date but not a shares outstanding for every date. Use the most recent shares available if none exists in the db for that day. Information, table structure, and a short demo are below.

**Info:**
* the method that runs the query is in App/Models/Price file
* dates for the preceding 12 months
* dummy, randomized data for prices, shares, and ticker
* shares outstanding are randomly updated every 20-30 days
* only one security used as example but query would work for any number

```
SELECT prices.date, prices.ticker, prices.price,
CASE WHEN prices.date >= shares.date 
  THEN shares.shares                  
  END AS Shares_OS
FROM prices
JOIN shares 
WHERE prices.ticker = shares.ticker            
AND Shares_OS IS NOT NULL
GROUP BY prices.date
```

**Table structure**

**Price table: ID | Date | Ticker | Price**

**Shares table: ID | Date | Ticker | Shares outstanding**

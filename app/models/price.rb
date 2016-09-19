class Price < ApplicationRecord

  def self.get_prices_and_shares
    sql = "SELECT prices.date, prices.ticker, prices.price,
            CASE WHEN prices.date >= shares.date 
              THEN shares.shares                  
              END AS Shares_OS
            FROM prices
            JOIN shares 
            WHERE prices.ticker = shares.ticker            
            AND Shares_OS IS NOT NULL
            GROUP BY prices.date"
    ActiveRecord::Base.connection.exec_query(sql)            
  end

end

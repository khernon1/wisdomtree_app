class CreatePrices < ActiveRecord::Migration[5.0]
  def change
    create_table :prices do |t|
      t.date :Date
      t.string :Ticker
      t.float :Price

      t.timestamps
    end
  end
end

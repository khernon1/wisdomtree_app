class CreateShares < ActiveRecord::Migration[5.0]
  def change
    create_table :shares do |t|
      t.date :Date
      t.string :Ticker
      t.integer :Shares

      t.timestamps
    end
  end
end

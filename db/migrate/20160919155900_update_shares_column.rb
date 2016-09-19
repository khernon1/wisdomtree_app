class UpdateSharesColumn < ActiveRecord::Migration[5.0]
  def change
    change_column :shares, :Shares, :integer, :limit => 10
  end
end

class RenameTransactionToTransTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :transactions, :trans_tables
  end
end

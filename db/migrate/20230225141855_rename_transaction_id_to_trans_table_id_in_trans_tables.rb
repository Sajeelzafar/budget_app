class RenameTransactionIdToTransTableIdInTransTables < ActiveRecord::Migration[7.0]
  def change
    rename_column :class_trans, :transaction_id, :trans_table_id
  end
end

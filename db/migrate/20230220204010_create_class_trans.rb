class CreateClassTrans < ActiveRecord::Migration[7.0]
  def change
    create_table :class_trans do |t|
      t.references :classification, null: false, foreign_key: true
      t.references :transaction, null: false, foreign_key: true

      t.timestamps
    end
  end
end

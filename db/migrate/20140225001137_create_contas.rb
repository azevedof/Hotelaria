class CreateContas < ActiveRecord::Migration
  def change
    create_table :contas do |t|
      t.string :valorTotal
      t.string :pago
      t.references :consumo, index: true

      t.timestamps
    end
  end
end

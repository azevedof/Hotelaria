class CreateConsumos < ActiveRecord::Migration
  def change
    create_table :consumos do |t|
      t.string :descricao
      t.string :quantidade
      t.string :valorUnitario

      t.timestamps
    end
  end
end

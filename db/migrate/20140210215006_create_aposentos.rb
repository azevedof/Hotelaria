class CreateAposentos < ActiveRecord::Migration
  def change
    create_table :aposentos do |t|
      t.int :pkidaposento
      t.string :descricao
      t.int :numero
      t.double :valor

      t.timestamps
    end
  end
end

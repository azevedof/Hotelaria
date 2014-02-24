class CreateAposentos < ActiveRecord::Migration
  def change
    create_table :aposentos do |t|
      t.string :valor
      t.string :descricao
      t.string :numero
      t.references :hotel, index: true

      t.timestamps
    end
  end
end

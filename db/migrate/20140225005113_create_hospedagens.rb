class CreateHospedagens < ActiveRecord::Migration
  def change
    create_table :hospedagens do |t|
      t.string :dataEntrada
      t.string :dataSaida
      t.references :conta, index: true
      t.references :hospede, index: true
      t.references :aposento, index: true

      t.timestamps
    end
  end
end

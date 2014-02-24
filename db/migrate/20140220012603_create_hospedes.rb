class CreateHospedes < ActiveRecord::Migration
  def change
    create_table :hospedes do |t|
      t.string :nome
      t.string :cpf
      t.string :rg
      t.string :telefone

      t.timestamps
    end
  end
end

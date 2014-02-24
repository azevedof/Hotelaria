class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone
      t.string :cidade
      t.string :estado

      t.timestamps
    end
  end
end

class CreateSimulacoes < ActiveRecord::Migration[5.0]
  def change
    create_table :simulacoes do |t|
      t.string :nome
      t.string :email
      t.string :nome_da_empresa
      t.string :faturamento
      t.string :valor_do_titulo
      t.string :prazo_ate_atendimento

      t.timestamps
    end
  end
end

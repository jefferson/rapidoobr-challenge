json.extract! simulacao, :id, :nome, :email, :nome_da_empresa, :faturamento, :valor_do_titulo, :prazo_ate_atendimento, :created_at, :updated_at
json.url simulacao_url(simulacao, format: :json)

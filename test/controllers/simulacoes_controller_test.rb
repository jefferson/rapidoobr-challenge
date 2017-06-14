require 'test_helper'

class SimulacoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @simulacao = simulacoes(:one)
  end

  test "should get index" do
    get simulacoes_url
    assert_response :success
  end

  test "should get new" do
    get new_simulacao_url
    assert_response :success
  end

  test "should create simulacao" do
    assert_difference('Simulacao.count') do
      post simulacoes_url, params: { simulacao: { email: @simulacao.email, faturamento: @simulacao.faturamento, nome: @simulacao.nome, nome_da_empresa: @simulacao.nome_da_empresa, prazo_ate_atendimento: @simulacao.prazo_ate_atendimento, valor_do_titulo: @simulacao.valor_do_titulo } }
    end

    assert_redirected_to simulacao_url(Simulacao.last)
  end

  test "should show simulacao" do
    get simulacao_url(@simulacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_simulacao_url(@simulacao)
    assert_response :success
  end

  test "should update simulacao" do
    patch simulacao_url(@simulacao), params: { simulacao: { email: @simulacao.email, faturamento: @simulacao.faturamento, nome: @simulacao.nome, nome_da_empresa: @simulacao.nome_da_empresa, prazo_ate_atendimento: @simulacao.prazo_ate_atendimento, valor_do_titulo: @simulacao.valor_do_titulo } }
    assert_redirected_to simulacao_url(@simulacao)
  end

  test "should destroy simulacao" do
    assert_difference('Simulacao.count', -1) do
      delete simulacao_url(@simulacao)
    end

    assert_redirected_to simulacoes_url
  end
end

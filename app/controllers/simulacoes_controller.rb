class SimulacoesController < ApplicationController
  
  before_action :set_simulacao, only: [:show, :edit, :update, :destroy]

  # GET /simulacoes
  # GET /simulacoes.json
  def index
    @simulacoes = Simulacao.all
    redirect_to root_path
  end

  # GET /simulacoes/1
  # GET /simulacoes/1.json
  def show
  end

  # GET /simulacoes/new
  def new
    @simulacao = Simulacao.new
  end

  # POST /simulacoes
  # POST /simulacoes.json
  def create
    
    @simulacao = Simulacao.new(simulacao_params)

    respond_to do |format|
      if @simulacao.save
        format.html { redirect_to @simulacao, notice: 'Simulacao was successfully created.' }
        format.json { render :show, status: :created, location: @simulacao }
      else
        format.html { render :new }
        format.json { render json: @simulacao.errors, status: :unprocessable_entity }
      end
      
    end
  end

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_simulacao
      @simulacao = Simulacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def simulacao_params
      params.require(:simulacao).permit(:nome, :email, :nome_da_empresa, :faturamento, :valor_do_titulo, :prazo_ate_atendimento)
    end
end

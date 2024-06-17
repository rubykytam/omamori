class Api::V1::OmamorisController < ApplicationController
  def index
    if params[:search].present?
      search_term = "%#{params[:search]}%"
      @omamoris = Omamori.where('jinja ILIKE :search OR name ILIKE :search', search: search_term)
    else
      @omamoris = Omamori.all
    end
    render json: @omamoris.order(created_at: :desc), status: :ok
  end

  def create
    @omamori = Omamori.new(omamori_params)
    if @omamori.save
      render json: @omamori, status: :created
    else
      render json: { error: @omamori.errors.messages }, status: :unprocessable_entity
    end
  end

  private

  def omamori_params
    params.require(:omamori).permit(:jinja, :photo_url, tags: [])
  end
end

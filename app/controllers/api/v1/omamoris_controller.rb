class Api::V1::OmamorisController < ApplicationController
  def index
    if params[:search].present?
      @omamoris = Omamori.where("name ILIKE :search OR color ILIKE :search OR :search = ANY(tags)", search: "%#{params[:search]}%")
    else
     @omamoris = Omamori.all
    end
    render json: @omamoris.order(created_at: :desc).as_json(methods: [:photo_urls]), status: :ok
  end
end
